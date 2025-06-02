/// A complimentary protocol for ``View`` to make implementing views more
/// type-safe without leaking the `Children` associated type to users
/// (otherwise they would need to provide a `Children` associated type for
/// every view they made).
protocol TypeSafeView: View {
    associatedtype Children: ViewGraphNodeChildren

    func children<Backend: AppBackend>(
        backend: Backend,
        snapshots: [ViewGraphSnapshotter.NodeSnapshot]?,
        environment: EnvironmentValues
    ) -> Children

    func layoutableChildren<Backend: AppBackend>(
        backend: Backend,
        children: Children
    ) -> [LayoutSystem.LayoutableChild]

    func asWidget<Backend: AppBackend>(
        _ children: Children,
        backend: Backend
    ) -> Backend.Widget

    func computeLayout<Backend: AppBackend>(
        _ widget: Backend.Widget,
        children: Children,
        proposedSize: SizeProposal,
        environment: EnvironmentValues,
        backend: Backend
    ) -> ViewLayoutResult

    func commit<Backend: AppBackend>(
        _ widget: Backend.Widget,
        children: Children,
        layout: ViewLayoutResult,
        environment: EnvironmentValues,
        backend: Backend
    )
}

extension TypeSafeView {
    public func children<Backend: AppBackend>(
        backend: Backend,
        snapshots: [ViewGraphSnapshotter.NodeSnapshot]?,
        environment: EnvironmentValues
    ) -> any ViewGraphNodeChildren {
        let children: Children = children(
            backend: backend,
            snapshots: snapshots,
            environment: environment
        )
        return children
    }

    public func layoutableChildren<Backend: AppBackend>(
        backend: Backend,
        children: any ViewGraphNodeChildren
    ) -> [LayoutSystem.LayoutableChild] {
        return layoutableChildren(backend: backend, children: children as! Children)
    }

    public func layoutableChildren<Backend: AppBackend>(
        backend: Backend,
        children: Children
    ) -> [LayoutSystem.LayoutableChild] {
        // Most views don't need to implement this at all so a simple default implementation
        // suffices in most cases.
        []
    }

    public func asWidget<Backend: AppBackend>(
        _ children: any ViewGraphNodeChildren,
        backend: Backend
    ) -> Backend.Widget {
        return asWidget(children as! Children, backend: backend)
    }

    public func computeLayout<Backend: AppBackend>(
        _ widget: Backend.Widget,
        children: any ViewGraphNodeChildren,
        proposedSize: SizeProposal,
        environment: EnvironmentValues,
        backend: Backend
    ) -> ViewLayoutResult {
        computeLayout(
            widget,
            children: children as! Children,
            proposedSize: proposedSize,
            environment: environment,
            backend: backend
        )
    }

    public func commit<Backend: AppBackend>(
        _ widget: Backend.Widget,
        children: any ViewGraphNodeChildren,
        layout: ViewLayoutResult,
        environment: EnvironmentValues,
        backend: Backend
    ) {
        commit(
            widget,
            children: children as! Children,
            layout: layout,
            environment: environment,
            backend: backend
        )
    }
}
