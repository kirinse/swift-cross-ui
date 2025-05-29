import Foundation

public struct ProgressView<Label: View>: View {
    private var label: Label
    private var progress: Double?
    private var kind: Kind

    private enum Kind {
        case spinner
        case bar
    }

    public var body: some View {
        if label as? EmptyView == nil {
            progressIndicator
            label
        } else {
            progressIndicator
        }
    }

    @ViewBuilder
    private var progressIndicator: some View {
        switch kind {
            case .spinner:
                ProgressSpinnerView()
            case .bar:
                ProgressBarView(value: progress)
        }
    }

    public init(_ label: Label) {
        self.label = label
        self.kind = .spinner
    }

    public init(_ label: Label, _ progress: Progress) {
        self.label = label
        self.kind = .bar

        if !progress.isIndeterminate {
            self.progress = progress.fractionCompleted
        }
    }

    /// Creates a progress bar view. If `value` is `nil`, an indeterminate progress
    /// bar will be shown.
    public init<Value: BinaryFloatingPoint>(_ label: Label, value: Value?) {
        self.label = label
        self.kind = .bar
        self.progress = value.map(Double.init)
    }
}

extension ProgressView where Label == EmptyView {
    public init() {
        self.label = EmptyView()
        self.kind = .spinner
    }

    public init(_ progress: Progress) {
        self.label = EmptyView()
        self.kind = .bar

        if !progress.isIndeterminate {
            self.progress = progress.fractionCompleted
        }
    }

    /// Creates a progress bar view. If `value` is `nil`, an indeterminate progress
    /// bar will be shown.
    public init<Value: BinaryFloatingPoint>(value: Value?) {
        self.label = EmptyView()
        self.kind = .bar
        self.progress = value.map(Double.init)
    }
}

extension ProgressView where Label == Text {
    public init(_ label: String) {
        self.label = Text(label)
        self.kind = .spinner
    }

    public init(_ label: String, _ progress: Progress) {
        self.label = Text(label)
        self.kind = .bar

        if !progress.isIndeterminate {
            self.progress = progress.fractionCompleted
        }
    }

    /// Creates a progress bar view. If `value` is `nil`, an indeterminate progress
    /// bar will be shown.
    public init<Value: BinaryFloatingPoint>(_ label: String, value: Value?) {
        self.label = Text(label)
        self.kind = .bar
        self.progress = value.map(Double.init)
    }
}

struct ProgressSpinnerView: ElementaryView {
    init() {}

    func asWidget<Backend: AppBackend>(backend: Backend) -> Backend.Widget {
        backend.createProgressSpinner()
    }

    func computeLayout<Backend: AppBackend>(
        _ widget: Backend.Widget,
        proposedSize: SIMD2<Int>,
        environment: EnvironmentValues,
        backend: Backend
    ) -> ViewLayoutResult {
        ViewLayoutResult.leafView(
            size: ViewSize(fixedSize: backend.naturalSize(of: widget))
        )
    }

    func commit<Backend: AppBackend>(
        _ widget: Backend.Widget,
        layout: ViewLayoutResult,
        environment: EnvironmentValues,
        backend: Backend
    ) {}
}

struct ProgressBarView: ElementaryView {
    var value: Double?

    init(value: Double?) {
        self.value = value
    }

    func asWidget<Backend: AppBackend>(backend: Backend) -> Backend.Widget {
        backend.createProgressBar()
    }

    func computeLayout<Backend: AppBackend>(
        _ widget: Backend.Widget,
        proposedSize: SIMD2<Int>,
        environment: EnvironmentValues,
        backend: Backend
    ) -> ViewLayoutResult {
        let height = backend.naturalSize(of: widget).y
        let size = SIMD2(
            proposedSize.x,
            height
        )

        return ViewLayoutResult.leafView(
            size: ViewSize(
                size: size,
                idealSize: SIMD2(100, height),
                minimumWidth: 0,
                minimumHeight: height,
                maximumWidth: nil,
                maximumHeight: Double(height)
            )
        )
    }

    func commit<Backend: AppBackend>(
        _ widget: Backend.Widget,
        layout: ViewLayoutResult,
        environment: EnvironmentValues,
        backend: Backend
    ) {
        backend.updateProgressBar(widget, progressFraction: value, environment: environment)
        backend.setSize(of: widget, to: layout.size.size)
    }
}
