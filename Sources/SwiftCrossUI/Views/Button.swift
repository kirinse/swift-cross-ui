/// A control that initiates an action.
public struct Button: ElementaryView, View {
    /// The label to show on the button.
    package var label: String
    /// The action to be performed when the button is clicked.
    package var action: () -> Void
    /// The button's forced width if provided.
    var width: Int?

    /// Creates a button that displays a custom label.
    public init(_ label: String, action: @escaping () -> Void = {}) {
        self.label = label
        self.action = action
    }

    public func asWidget<Backend: AppBackend>(backend: Backend) -> Backend.Widget {
        return backend.createButton()
    }

    public func computeLayout<Backend: AppBackend>(
        _ widget: Backend.Widget,
        proposedSize: SIMD2<Int>,
        environment: EnvironmentValues,
        backend: Backend
    ) -> ViewLayoutResult {
        // TODO: Implement button sizing within SwiftCrossUI so that we can move this to
        //   commit. Relying on the backend for button sizing also makes the Gtk 3 backend
        //   basically impossible to implement correctly, hence the
        //   `finalContentSize != contentSize` check in WindowGroupNode to catch any weird
        //   behaviour. Without that extra safety net logic, buttons all end up label-less
        //   whenever the window grows due to a view containing buttons appearing. Not sure
        //   why all buttons lose their labels (until you click off the window, forcing it to
        //   refresh), but the reason Gtk 3 doesn't like it is that the window gets set smaller
        //   than its content I think.
        //   See: https://github.com/stackotter/swift-cross-ui/blob/27f50579c52e79323c3c368512d37e95af576c25/Sources/SwiftCrossUI/Scenes/WindowGroupNode.swift#L140
        backend.updateButton(
            widget,
            label: label,
            environment: environment,
            action: action
        )
        let naturalSize = backend.naturalSize(of: widget)
        let size = SIMD2(
            width ?? naturalSize.x,
            naturalSize.y
        )

        return ViewLayoutResult.leafView(size: ViewSize(fixedSize: size))
    }

    public func commit<Backend: AppBackend>(
        _ widget: Backend.Widget,
        layout: ViewLayoutResult,
        environment: EnvironmentValues,
        backend: Backend
    ) {
        backend.setSize(of: widget, to: layout.size.size)
    }

    /// A temporary button width solution until arbitrary labels are supported.
    public func _buttonWidth(_ width: Int?) -> Button {
        var button = self
        button.width = width
        return button
    }
}
