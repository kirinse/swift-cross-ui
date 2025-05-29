import Foundation

public struct ErasedViewGraphNode {
    public var node: Any

    /// If the new view doesn't have the same type as the old view then the returned
    /// value will have `viewTypeMatched` set to `false`, allowing views such as `AnyView`
    /// to choose how to react to a mismatch. In `AnyView`'s case this means throwing away
    /// the current view graph node and creating a new one for the new view type.
    public var computeLayoutWithNewView:
        (
            _ newView: Any?,
            _ proposedSize: SIMD2<Int>,
            _ environment: EnvironmentValues
        ) -> (viewTypeMatched: Bool, size: ViewLayoutResult)
    /// The underlying view graph node's commit method.
    public var commit: () -> ViewLayoutResult

    public var getWidget: () -> AnyWidget
    public var viewType: any View.Type
    public var backendType: any AppBackend.Type

    public init<V: View, Backend: AppBackend>(
        for view: V,
        backend: Backend,
        snapshot: ViewGraphSnapshotter.NodeSnapshot? = nil,
        environment: EnvironmentValues
    ) {
        self.init(
            wrapping: ViewGraphNode(
                for: view,
                backend: backend,
                snapshot: snapshot,
                environment: environment
            )
        )
    }

    public init<V: View, Backend: AppBackend>(
        wrapping node: ViewGraphNode<V, Backend>
    ) {
        self.node = node
        backendType = Backend.self
        viewType = V.self
        computeLayoutWithNewView = { view, proposedSize, environment in
            if let view {
                guard let view = view as? V else {
                    return (false, ViewLayoutResult.leafView(size: .empty))
                }
                let size = node.computeLayout(
                    with: view,
                    proposedSize: proposedSize,
                    environment: environment
                )
                return (true, size)
            } else {
                let size = node.computeLayout(
                    with: nil,
                    proposedSize: proposedSize,
                    environment: environment
                )
                return (true, size)
            }
        }
        commit = node.commit
        getWidget = {
            return AnyWidget(node.widget)
        }
    }

    public init<V: View>(wrapping node: AnyViewGraphNode<V>) {
        self.init(wrapping: node, backend: node.getBackend())
    }

    private init<V: View, Backend: AppBackend>(
        wrapping node: AnyViewGraphNode<V>, backend: Backend
    ) {
        self.init(wrapping: node.node as! ViewGraphNode<V, Backend>)
    }

    public func transform<R>(with transformer: any ErasedViewGraphNodeTransformer<R>) -> R {
        func helper<V: View, Backend: AppBackend>(
            viewType: V.Type,
            backendType: Backend.Type
        ) -> R {
            transformer.transform(node: node as! ViewGraphNode<V, Backend>)
        }
        return helper(viewType: viewType, backendType: backendType)
    }
}

public protocol ErasedViewGraphNodeTransformer<Return> {
    associatedtype Return

    func transform<V: View, Backend: AppBackend>(node: ViewGraphNode<V, Backend>) -> Return
}
