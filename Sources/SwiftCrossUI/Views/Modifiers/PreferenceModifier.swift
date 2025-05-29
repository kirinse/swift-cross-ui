extension View {
    public func preference<V>(
        key: WritableKeyPath<PreferenceValues, V>,
        value: V
    ) -> some View {
        PreferenceModifier(self) { preferences, _ in
            var preferences = preferences
            preferences[keyPath: key] = value
            return preferences
        }
    }
}

struct PreferenceModifier<Child: View>: View {
    var body: TupleView1<Child>
    var modification: (PreferenceValues, EnvironmentValues) -> PreferenceValues

    init(
        _ child: Child,
        modification: @escaping (PreferenceValues, EnvironmentValues) -> PreferenceValues
    ) {
        self.body = TupleView1(child)
        self.modification = modification
    }

    func computeLayout<Backend: AppBackend>(
        _ widget: Backend.Widget,
        children: any ViewGraphNodeChildren,
        proposedSize: SIMD2<Int>,
        environment: EnvironmentValues,
        backend: Backend
    ) -> ViewLayoutResult {
        var result = defaultComputeLayout(
            widget,
            children: children,
            proposedSize: proposedSize,
            environment: environment,
            backend: backend
        )
        result.preferences = modification(result.preferences, environment)
        return result
    }
}
