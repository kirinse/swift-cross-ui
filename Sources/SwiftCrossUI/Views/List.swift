public struct List<SelectionValue: Hashable, RowView: View>: TypeSafeView, View {
    typealias Children = ListViewChildren<PaddingModifierView<RowView>>

    public let body = EmptyView()

    var selection: Binding<SelectionValue?>
    var rowContent: (Int) -> RowView
    var associatedSelectionValue: (Int) -> SelectionValue
    var find: (SelectionValue) -> Int?
    var rowCount: Int

    public init<Data: RandomAccessCollection>(
        _ data: Data,
        selection: Binding<SelectionValue?>,
        @ViewBuilder rowContent: @escaping (Data.Element) -> RowView
    ) where Data.Element: Identifiable, Data.Element.ID == SelectionValue, Data.Index == Int {
        self.init(data, id: \.id, selection: selection, rowContent: rowContent)
    }

    public init<Data: RandomAccessCollection>(
        _ data: Data,
        selection: Binding<SelectionValue?>
    )
    where
        Data.Element: CustomStringConvertible & Identifiable,
        Data.Element.ID == SelectionValue,
        Data.Index == Int,
        RowView == Text
    {
        self.init(data, selection: selection) { item in
            return Text(item.description)
        }
    }

    public init<Data: RandomAccessCollection>(
        _ data: Data,
        id: @escaping (Data.Element) -> SelectionValue,
        selection: Binding<SelectionValue?>
    ) where Data.Element: CustomStringConvertible, RowView == Text, Data.Index == Int {
        self.init(data, id: id, selection: selection) { item in
            return Text(item.description)
        }
    }

    public init<Data: RandomAccessCollection>(
        _ data: Data,
        id: KeyPath<Data.Element, SelectionValue>,
        selection: Binding<SelectionValue?>
    ) where Data.Element: CustomStringConvertible, RowView == Text, Data.Index == Int {
        self.init(data, id: id, selection: selection) { item in
            return Text(item.description)
        }
    }

    public init<Data: RandomAccessCollection>(
        _ data: Data,
        id: KeyPath<Data.Element, SelectionValue>,
        selection: Binding<SelectionValue?>,
        @ViewBuilder rowContent: @escaping (Data.Element) -> RowView
    ) where Data.Index == Int {
        self.init(data, id: { $0[keyPath: id] }, selection: selection, rowContent: rowContent)
    }

    public init<Data: RandomAccessCollection>(
        _ data: Data,
        id: @escaping (Data.Element) -> SelectionValue,
        selection: Binding<SelectionValue?>,
        @ViewBuilder rowContent: @escaping (Data.Element) -> RowView
    ) where Data.Index == Int {
        self.selection = selection
        self.rowContent = { index in
            rowContent(data[index])
        }
        associatedSelectionValue = { index in
            id(data[index])
        }
        find = { selection in
            data.firstIndex { item in
                id(item) == selection
            }
        }
        rowCount = data.count
    }

    func children<Backend: AppBackend>(
        backend: Backend,
        snapshots: [ViewGraphSnapshotter.NodeSnapshot]?,
        environment: EnvironmentValues
    ) -> Children {
        // TODO: Implement snapshotting
        Children()
    }

    func asWidget<Backend: AppBackend>(
        _ children: Children,
        backend: Backend
    ) -> Backend.Widget {
        backend.createSelectableListView()
    }

    func computeLayout<Backend: AppBackend>(
        _ widget: Backend.Widget,
        children: Children,
        proposedSize: SizeProposal,
        environment: EnvironmentValues,
        backend: Backend
    ) -> ViewLayoutResult {
        // Padding that the backend could not remove (some frameworks have a small
        // constant amount of required padding within each row).
        let baseRowPadding = backend.baseItemPadding(ofSelectableListView: widget)
        let minimumRowSize = backend.minimumRowSize(ofSelectableListView: widget)
        let horizontalBasePadding = baseRowPadding.axisTotals.x
        let verticalBasePadding = baseRowPadding.axisTotals.y

        let rowViews = (0..<rowCount).map(rowContent).map { rowView in
            PaddingModifierView(
                body: TupleView1(rowView),
                insets: EdgeInsets.Internal(
                    top: max(6 - baseRowPadding.top, 0),
                    bottom: max(6 - baseRowPadding.bottom, 0),
                    leading: max(8 - baseRowPadding.leading, 0),
                    trailing: max(8 - baseRowPadding.trailing, 0)
                )
            )
        }

        if rowCount > children.nodes.count {
            for rowView in rowViews.dropFirst(children.nodes.count) {
                let node = AnyViewGraphNode(
                    for: rowView,
                    backend: backend,
                    environment: environment
                )
                children.nodes.append(node)
            }
        } else if children.nodes.count > rowCount {
            children.nodes.removeLast(children.nodes.count - rowCount)
        }

        var childResults: [ViewLayoutResult] = []
        for (rowView, node) in zip(rowViews, children.nodes) {
            let childSizeProposal: SizeProposal
            if let proposedWidth = proposedSize.width {
                childSizeProposal = SizeProposal(
                    max(proposedWidth, minimumRowSize.x) - horizontalBasePadding,
                    nil
                )
            } else {
                childSizeProposal = .ideal
            }
            let childResult = node.computeLayout(
                with: rowView,
                proposedSize: childSizeProposal,
                environment: environment
            )
            childResults.append(childResult)
        }

        let inferredWidth =
            (childResults.map(\.size.size.x).max() ?? 0)
            + horizontalBasePadding
        let idealWidth =
            (childResults.map(\.size.idealSize.x).max() ?? 0)
            + horizontalBasePadding

        let size = SIMD2(
            max(
                inferredWidth,
                max(minimumRowSize.x, proposedSize.width ?? idealWidth)
            ),
            childResults.map(\.size.size.y).map { rowHeight in
                max(
                    rowHeight + verticalBasePadding,
                    minimumRowSize.y
                )
            }.reduce(0, +)
        )

        return ViewLayoutResult(
            size: ViewSize(
                size: size,
                idealSize: SIMD2(
                    idealWidth,
                    size.y
                ),
                minimumWidth: (childResults.map(\.size.minimumWidth).max() ?? 0)
                    + horizontalBasePadding,
                minimumHeight: size.y,
                maximumWidth: nil,
                maximumHeight: Double(size.y)
            ),
            childResults: childResults
        )
    }

    func commit<Backend: AppBackend>(
        _ widget: Backend.Widget,
        children: Children,
        layout: ViewLayoutResult,
        environment: EnvironmentValues,
        backend: Backend
    ) {
        let baseRowPadding = backend.baseItemPadding(ofSelectableListView: widget)
        let verticalBasePadding = baseRowPadding.axisTotals.y

        let childResults = children.nodes.map { $0.commit() }
        backend.setItems(
            ofSelectableListView: widget,
            to: children.widgets.map { $0.into() },
            withRowHeights: childResults.map(\.size.size.y).map { height in
                height + verticalBasePadding
            }
        )

        backend.setSize(of: widget, to: layout.size.size)
        backend.setSelectionHandler(forSelectableListView: widget) { selectedIndex in
            selection.wrappedValue = associatedSelectionValue(selectedIndex)
        }

        let selectedIndex: Int?
        if let selectedItem = selection.wrappedValue {
            selectedIndex = find(selectedItem)
        } else {
            selectedIndex = nil
        }

        backend.setSelectedItem(ofSelectableListView: widget, toItemAt: selectedIndex)
    }
}

class ListViewChildren<RowView: View>: ViewGraphNodeChildren {
    var nodes: [AnyViewGraphNode<RowView>]

    init() {
        nodes = []
    }

    var erasedNodes: [ErasedViewGraphNode] {
        nodes.map(ErasedViewGraphNode.init)
    }

    var widgets: [AnyWidget] {
        nodes.map(\.widget)
    }
}
