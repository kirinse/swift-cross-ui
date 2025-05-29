extension View {
    public func onChange<Value: Equatable>(
        of value: Value,
        initial: Bool = false,
        perform action: @escaping () -> Void
    ) -> some View {
        OnChangeModifier(
            body: TupleView1(self),
            value: value,
            action: action,
            initial: initial
        )
    }
}

struct OnChangeModifier<Value: Equatable, Content: View>: View {
    // TODO: This probably doesn't have to trigger view updates. We're only
    //   really using @State here to persist the data.
    @State var previousValue: Value?

    var body: TupleView1<Content>

    var value: Value
    var action: () -> Void
    var initial: Bool

    // TODO: Should this go in computeLayout or commit?
    func computeLayout<Backend: AppBackend>(
        _ widget: Backend.Widget,
        children: any ViewGraphNodeChildren,
        proposedSize: SIMD2<Int>,
        environment: EnvironmentValues,
        backend: Backend
    ) -> ViewLayoutResult {
        if let previousValue = previousValue, value != previousValue {
            action()
        } else if initial && previousValue == nil {
            action()
        }

        if previousValue != value {
            previousValue = value
        }

        return defaultComputeLayout(
            widget,
            children: children,
            proposedSize: proposedSize,
            environment: environment,
            backend: backend
        )
    }
}
