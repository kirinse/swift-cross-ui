/// A flexible space that expands along the major axis of its containing
/// stack layout, or on both axes if not contained in a stack.
public struct Spacer: ElementaryView, View {
    /// The minimum length this spacer can be shrunk to, along the axis of
    /// expansion.
    package var minLength: Int?

    /// Creates a spacer with a given minimum length along its axis or axes
    /// of expansion.
    public init(minLength: Int? = nil) {
        self.minLength = minLength
    }

    func asWidget<Backend: AppBackend>(backend: Backend) -> Backend.Widget {
        return backend.createContainer()
    }

    func computeLayout<Backend: AppBackend>(
        _ widget: Backend.Widget,
        proposedSize: SizeProposal,
        environment: EnvironmentValues,
        backend: Backend
    ) -> ViewLayoutResult {
        let minLength = minLength ?? 0

        let size: SIMD2<Int>
        let minimumWidth: Int
        let minimumHeight: Int
        let maximumWidth: Double?
        let maximumHeight: Double?
        switch environment.layoutOrientation {
            case .horizontal:
                minimumWidth = minLength
                minimumHeight = 0
                maximumWidth = nil
                maximumHeight = 0
                size = SIMD2(max(minLength, proposedSize.width ?? minimumWidth), 0)
            case .vertical:
                minimumWidth = 0
                minimumHeight = minLength
                maximumWidth = 0
                maximumHeight = nil
                size = SIMD2(0, max(minLength, proposedSize.height ?? minimumHeight))
        }

        return ViewLayoutResult.leafView(
            size: ViewSize(
                size: size,
                idealSize: SIMD2(minimumWidth, minimumHeight),
                minimumWidth: minimumWidth,
                minimumHeight: minimumHeight,
                maximumWidth: maximumWidth,
                maximumHeight: maximumHeight
            )
        )
    }

    func commit<Backend: AppBackend>(
        _ widget: Backend.Widget,
        layout: ViewLayoutResult,
        environment: EnvironmentValues,
        backend: Backend
    ) {
        // Spacers are invisible so we don't have to update anything.
    }
}
