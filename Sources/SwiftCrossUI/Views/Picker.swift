/// A control for selecting from a set of values.
public struct Picker<Value: Equatable>: ElementaryView, View {
    /// The options to be offered by the picker.
    private var options: [Value]
    /// The picker's selected option.
    private var value: Binding<Value?>

    /// The index of the selected option (if any).
    private var selectedOptionIndex: Int? {
        return options.firstIndex { option in
            return option == value.wrappedValue
        }
    }

    /// Creates a new picker with the given options and a binding for the selected value.
    public init(of options: [Value], selection value: Binding<Value?>) {
        self.options = options
        self.value = value
    }

    func asWidget<Backend: AppBackend>(backend: Backend) -> Backend.Widget {
        return backend.createPicker()
    }

    func computeLayout<Backend: AppBackend>(
        _ widget: Backend.Widget,
        proposedSize: SIMD2<Int>,
        environment: EnvironmentValues,
        backend: Backend
    ) -> ViewLayoutResult {
        // TODO: Implement picker sizing within SwiftCrossUI so that we can
        //   properly separate committing logic out into `commit`.
        backend.updatePicker(
            widget,
            options: options.map { "\($0)" },
            environment: environment
        ) {
            selectedIndex in
            guard let selectedIndex = selectedIndex else {
                value.wrappedValue = nil
                return
            }
            value.wrappedValue = options[selectedIndex]
        }
        backend.setSelectedOption(ofPicker: widget, to: selectedOptionIndex)

        // Special handling for UIKitBackend:
        // When backed by a UITableView, its natural size is -1 x -1,
        // but it can and should be as large as reasonable
        let size = backend.naturalSize(of: widget)
        if size == SIMD2(-1, -1) {
            return ViewLayoutResult.leafView(
                size: ViewSize(
                    size: proposedSize,
                    idealSize: SIMD2(10, 10),
                    minimumWidth: 0,
                    minimumHeight: 0,
                    maximumWidth: nil,
                    maximumHeight: nil
                )
            )
        } else {
            return ViewLayoutResult.leafView(
                size: ViewSize(fixedSize: size)
            )
        }
    }

    func commit<Backend: AppBackend>(
        _ widget: Backend.Widget,
        layout: ViewLayoutResult,
        environment: EnvironmentValues,
        backend: Backend
    ) {
        backend.setSize(of: widget, to: layout.size.size)
    }
}
