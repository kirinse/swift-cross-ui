/// A container that presents rows of data arranged in columns.
public struct Table<RowValue, RowContent: TableRowContent<RowValue>>: TypeSafeView, View {
    typealias Children = TableViewChildren<RowContent.RowContent>

    public var body = EmptyView()

    /// The row data to display.
    private var rows: [RowValue]
    /// The columns to display (which each compute their cell values when given
    /// ``Table/Row`` instances).
    private var columns: RowContent

    /// Creates a table that computes its cell values based on a collection of rows.
    public init(_ rows: [RowValue], @TableRowBuilder<RowValue> _ columns: () -> RowContent) {
        self.rows = rows
        self.columns = columns()
    }

    func children<Backend: AppBackend>(
        backend: Backend,
        snapshots: [ViewGraphSnapshotter.NodeSnapshot]?,
        environment: EnvironmentValues
    ) -> Children {
        // TODO: Table snapshotting
        TableViewChildren()
    }

    func asWidget<Backend: AppBackend>(
        _ children: Children,
        backend: Backend
    ) -> Backend.Widget {
        return backend.createTable()
    }

    func computeLayout<Backend: AppBackend>(
        _ widget: Backend.Widget,
        children: Children,
        proposedSize: SIMD2<Int>,
        environment: EnvironmentValues,
        backend: Backend
    ) -> ViewLayoutResult {
        let size = proposedSize
        var cellResults: [ViewLayoutResult] = []
        children.rowContent = rows.map(columns.content(for:)).map(RowView.init(_:))
        let columnLabels = columns.labels
        let columnCount = columnLabels.count

        // Create and destroy row nodes
        let remainder = children.rowContent.count - children.rowNodes.count
        if remainder < 0 {
            children.rowNodes.removeLast(-remainder)
            children.cellContainerWidgets.removeLast(-remainder * columnCount)
        } else if remainder > 0 {
            for row in children.rowContent[children.rowNodes.count...] {
                let rowNode = AnyViewGraphNode(
                    for: row,
                    backend: backend,
                    environment: environment
                )
                children.rowNodes.append(rowNode)
                for cellWidget in rowNode.getChildren().widgets(for: backend) {
                    let cellContainer = backend.createContainer()
                    backend.addChild(cellWidget, to: cellContainer)
                    children.cellContainerWidgets.append(AnyWidget(cellContainer))
                }
            }
        }

        // Update row nodes
        let columnWidth = proposedSize.x / columnCount
        for (node, content) in zip(children.rowNodes, children.rowContent) {
            // TODO: Figure out if this is required
            // This doesn't update the row's cells. It just updates the view
            // instance stored in the row's ViewGraphNode
            _ = node.computeLayout(
                with: content,
                proposedSize: .zero,
                environment: environment
            )
        }

        // Compute cell layouts. Really only done during this initial layout
        // step to propagate cell preference values. Otherwise we'd do it
        // during commit.
        var rowHeights: [Int] = []
        let rows = zip(children.rowNodes, children.rowContent)
        for (rowNode, content) in rows {
            let rowCells = content.layoutableChildren(
                backend: backend,
                children: rowNode.getChildren()
            )

            var rowCellHeights: [Int] = []
            for rowCell in rowCells {
                let cellResult = rowCell.computeLayout(
                    proposedSize: SIMD2(columnWidth, backend.defaultTableRowContentHeight),
                    environment: environment
                )
                cellResults.append(cellResult)
                rowCellHeights.append(cellResult.size.size.y)
            }

            let rowHeight = max(
                rowCellHeights.max() ?? 0,
                backend.defaultTableRowContentHeight
            ) + backend.defaultTableCellVerticalPadding * 2

            rowHeights.append(rowHeight)
        }
        children.rowHeights = rowHeights

        // TODO: Compute a proper ideal size for tables
        return ViewLayoutResult(
            size: ViewSize(
                size: size,
                idealSize: .zero,
                minimumWidth: 0,
                minimumHeight: 0,
                maximumWidth: nil,
                maximumHeight: nil
            ),
            childResults: cellResults
        )
    }

    func commit<Backend: AppBackend>(
        _ widget: Backend.Widget,
        children: TableViewChildren<RowContent.RowContent>,
        layout: ViewLayoutResult,
        environment: EnvironmentValues,
        backend: Backend
    ) {
        let columnLabels = columns.labels
        backend.setRowCount(ofTable: widget, to: rows.count)
        backend.setColumnLabels(ofTable: widget, to: columnLabels, environment: environment)

        // TODO: Avoid overhead of converting `cellContainerWidgets` to
        //   `[AnyWidget]` and back again all the time.
        backend.setCells(
            ofTable: widget,
            to: children.cellContainerWidgets.map { $0.into() },
            withRowHeights: children.rowHeights
        )

        let columnCount = columnLabels.count
        for (rowIndex, rowHeight) in children.rowHeights.enumerated() {
            let rowCells = children.rowContent[rowIndex].layoutableChildren(
                backend: backend,
                children: children.rowNodes[rowIndex].getChildren()
            )

            for (columnIndex, cell) in rowCells.enumerated() {
                let index = rowIndex * columnCount + columnIndex
                let cellSize = cell.commit()
                backend.setPosition(
                    ofChildAt: 0,
                    in: children.cellContainerWidgets[index].into(),
                    to: SIMD2(
                        0,
                        (rowHeight - cellSize.size.size.y) / 2
                    )
                )
            }
        }

        backend.setSize(of: widget, to: layout.size.size)
    }
}

class TableViewChildren<RowContent: View>: ViewGraphNodeChildren {
    var rowNodes: [AnyViewGraphNode<RowView<RowContent>>] = []
    var cellContainerWidgets: [AnyWidget] = []
    var rowHeights: [Int] = []
    var rowContent: [RowView<RowContent>] = []

    /// Not used, just a protocol requirement.
    var widgets: [AnyWidget] {
        rowNodes.map(\.widget)
    }

    var erasedNodes: [ErasedViewGraphNode] {
        rowNodes.map(ErasedViewGraphNode.init(wrapping:))
    }

    init() {
        rowNodes = []
        cellContainerWidgets = []
    }
}

/// An empty view that simply manages a row's children. Not intended to be rendered directly.
struct RowView<Content: View>: View {
    var body: Content

    init(_ content: Content) {
        self.body = content
    }

    func layoutableChildren<Backend: AppBackend>(
        backend: Backend,
        children: any ViewGraphNodeChildren
    ) -> [LayoutSystem.LayoutableChild] {
        body.layoutableChildren(backend: backend, children: children)
    }

    func children<Backend: AppBackend>(
        backend: Backend,
        snapshots: [ViewGraphSnapshotter.NodeSnapshot]?,
        environment: EnvironmentValues
    ) -> any ViewGraphNodeChildren {
        body.children(backend: backend, snapshots: snapshots, environment: environment)
    }

    func asWidget<Backend: AppBackend>(
        _ children: any ViewGraphNodeChildren,
        backend: Backend
    ) -> Backend.Widget {
        return backend.createContainer()
    }

    func computeLayout<Backend: AppBackend>(
        _ widget: Backend.Widget,
        children: any ViewGraphNodeChildren,
        proposedSize: SIMD2<Int>,
        environment: EnvironmentValues,
        backend: Backend
    ) -> ViewLayoutResult {
        return ViewLayoutResult.leafView(size: .empty)
    }

    func commit<Backend: AppBackend>(
        _ widget: Backend.Widget,
        children: any ViewGraphNodeChildren,
        layout: ViewLayoutResult,
        environment: EnvironmentValues,
        backend: Backend
    ) {}
}
