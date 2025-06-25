// This file was generated using gyb. Do not edit it directly. Edit
// TupleScene.swift.gyb instead.

public struct TupleScene2<Scene0: Scene, Scene1: Scene>: Scene {
    public typealias Node = TupleSceneNode2<Scene0, Scene1>

    var scene0: Scene0
    var scene1: Scene1

    public var commands: Commands

    public init(_ scene0: Scene0, _ scene1: Scene1) {
        self.scene0 = scene0
        self.scene1 = scene1

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
    }
}

public final class TupleSceneNode2<Scene0: Scene, Scene1: Scene>: SceneGraphNode {
    public typealias NodeScene = TupleScene2<Scene0, Scene1>

    var node0: Scene0.Node
    var node1: Scene1.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
    }
}
public struct TupleScene3<Scene0: Scene, Scene1: Scene, Scene2: Scene>: Scene {
    public typealias Node = TupleSceneNode3<Scene0, Scene1, Scene2>

    var scene0: Scene0
    var scene1: Scene1
    var scene2: Scene2

    public var commands: Commands

    public init(_ scene0: Scene0, _ scene1: Scene1, _ scene2: Scene2) {
        self.scene0 = scene0
        self.scene1 = scene1
        self.scene2 = scene2

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
            .overlayed(with: scene2.commands)
    }
}

public final class TupleSceneNode3<Scene0: Scene, Scene1: Scene, Scene2: Scene>: SceneGraphNode {
    public typealias NodeScene = TupleScene3<Scene0, Scene1, Scene2>

    var node0: Scene0.Node
    var node1: Scene1.Node
    var node2: Scene2.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
        node2 = Scene2.Node(from: scene.scene2, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
        node2.update(newScene?.scene2, backend: backend, environment: environment)
    }
}
public struct TupleScene4<Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene>: Scene {
    public typealias Node = TupleSceneNode4<Scene0, Scene1, Scene2, Scene3>

    var scene0: Scene0
    var scene1: Scene1
    var scene2: Scene2
    var scene3: Scene3

    public var commands: Commands

    public init(_ scene0: Scene0, _ scene1: Scene1, _ scene2: Scene2, _ scene3: Scene3) {
        self.scene0 = scene0
        self.scene1 = scene1
        self.scene2 = scene2
        self.scene3 = scene3

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
            .overlayed(with: scene2.commands)
            .overlayed(with: scene3.commands)
    }
}

public final class TupleSceneNode4<Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene>:
    SceneGraphNode
{
    public typealias NodeScene = TupleScene4<Scene0, Scene1, Scene2, Scene3>

    var node0: Scene0.Node
    var node1: Scene1.Node
    var node2: Scene2.Node
    var node3: Scene3.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
        node2 = Scene2.Node(from: scene.scene2, backend: backend, environment: environment)
        node3 = Scene3.Node(from: scene.scene3, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
        node2.update(newScene?.scene2, backend: backend, environment: environment)
        node3.update(newScene?.scene3, backend: backend, environment: environment)
    }
}
public struct TupleScene5<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene
>: Scene {
    public typealias Node = TupleSceneNode5<Scene0, Scene1, Scene2, Scene3, Scene4>

    var scene0: Scene0
    var scene1: Scene1
    var scene2: Scene2
    var scene3: Scene3
    var scene4: Scene4

    public var commands: Commands

    public init(
        _ scene0: Scene0, _ scene1: Scene1, _ scene2: Scene2, _ scene3: Scene3, _ scene4: Scene4
    ) {
        self.scene0 = scene0
        self.scene1 = scene1
        self.scene2 = scene2
        self.scene3 = scene3
        self.scene4 = scene4

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
            .overlayed(with: scene2.commands)
            .overlayed(with: scene3.commands)
            .overlayed(with: scene4.commands)
    }
}

public final class TupleSceneNode5<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene
>: SceneGraphNode {
    public typealias NodeScene = TupleScene5<Scene0, Scene1, Scene2, Scene3, Scene4>

    var node0: Scene0.Node
    var node1: Scene1.Node
    var node2: Scene2.Node
    var node3: Scene3.Node
    var node4: Scene4.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
        node2 = Scene2.Node(from: scene.scene2, backend: backend, environment: environment)
        node3 = Scene3.Node(from: scene.scene3, backend: backend, environment: environment)
        node4 = Scene4.Node(from: scene.scene4, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
        node2.update(newScene?.scene2, backend: backend, environment: environment)
        node3.update(newScene?.scene3, backend: backend, environment: environment)
        node4.update(newScene?.scene4, backend: backend, environment: environment)
    }
}
public struct TupleScene6<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene
>: Scene {
    public typealias Node = TupleSceneNode6<Scene0, Scene1, Scene2, Scene3, Scene4, Scene5>

    var scene0: Scene0
    var scene1: Scene1
    var scene2: Scene2
    var scene3: Scene3
    var scene4: Scene4
    var scene5: Scene5

    public var commands: Commands

    public init(
        _ scene0: Scene0, _ scene1: Scene1, _ scene2: Scene2, _ scene3: Scene3, _ scene4: Scene4,
        _ scene5: Scene5
    ) {
        self.scene0 = scene0
        self.scene1 = scene1
        self.scene2 = scene2
        self.scene3 = scene3
        self.scene4 = scene4
        self.scene5 = scene5

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
            .overlayed(with: scene2.commands)
            .overlayed(with: scene3.commands)
            .overlayed(with: scene4.commands)
            .overlayed(with: scene5.commands)
    }
}

public final class TupleSceneNode6<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene
>: SceneGraphNode {
    public typealias NodeScene = TupleScene6<Scene0, Scene1, Scene2, Scene3, Scene4, Scene5>

    var node0: Scene0.Node
    var node1: Scene1.Node
    var node2: Scene2.Node
    var node3: Scene3.Node
    var node4: Scene4.Node
    var node5: Scene5.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
        node2 = Scene2.Node(from: scene.scene2, backend: backend, environment: environment)
        node3 = Scene3.Node(from: scene.scene3, backend: backend, environment: environment)
        node4 = Scene4.Node(from: scene.scene4, backend: backend, environment: environment)
        node5 = Scene5.Node(from: scene.scene5, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
        node2.update(newScene?.scene2, backend: backend, environment: environment)
        node3.update(newScene?.scene3, backend: backend, environment: environment)
        node4.update(newScene?.scene4, backend: backend, environment: environment)
        node5.update(newScene?.scene5, backend: backend, environment: environment)
    }
}
public struct TupleScene7<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene
>: Scene {
    public typealias Node = TupleSceneNode7<Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6>

    var scene0: Scene0
    var scene1: Scene1
    var scene2: Scene2
    var scene3: Scene3
    var scene4: Scene4
    var scene5: Scene5
    var scene6: Scene6

    public var commands: Commands

    public init(
        _ scene0: Scene0, _ scene1: Scene1, _ scene2: Scene2, _ scene3: Scene3, _ scene4: Scene4,
        _ scene5: Scene5, _ scene6: Scene6
    ) {
        self.scene0 = scene0
        self.scene1 = scene1
        self.scene2 = scene2
        self.scene3 = scene3
        self.scene4 = scene4
        self.scene5 = scene5
        self.scene6 = scene6

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
            .overlayed(with: scene2.commands)
            .overlayed(with: scene3.commands)
            .overlayed(with: scene4.commands)
            .overlayed(with: scene5.commands)
            .overlayed(with: scene6.commands)
    }
}

public final class TupleSceneNode7<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene
>: SceneGraphNode {
    public typealias NodeScene = TupleScene7<Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6>

    var node0: Scene0.Node
    var node1: Scene1.Node
    var node2: Scene2.Node
    var node3: Scene3.Node
    var node4: Scene4.Node
    var node5: Scene5.Node
    var node6: Scene6.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
        node2 = Scene2.Node(from: scene.scene2, backend: backend, environment: environment)
        node3 = Scene3.Node(from: scene.scene3, backend: backend, environment: environment)
        node4 = Scene4.Node(from: scene.scene4, backend: backend, environment: environment)
        node5 = Scene5.Node(from: scene.scene5, backend: backend, environment: environment)
        node6 = Scene6.Node(from: scene.scene6, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
        node2.update(newScene?.scene2, backend: backend, environment: environment)
        node3.update(newScene?.scene3, backend: backend, environment: environment)
        node4.update(newScene?.scene4, backend: backend, environment: environment)
        node5.update(newScene?.scene5, backend: backend, environment: environment)
        node6.update(newScene?.scene6, backend: backend, environment: environment)
    }
}
public struct TupleScene8<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene
>: Scene {
    public typealias Node = TupleSceneNode8<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7
    >

    var scene0: Scene0
    var scene1: Scene1
    var scene2: Scene2
    var scene3: Scene3
    var scene4: Scene4
    var scene5: Scene5
    var scene6: Scene6
    var scene7: Scene7

    public var commands: Commands

    public init(
        _ scene0: Scene0, _ scene1: Scene1, _ scene2: Scene2, _ scene3: Scene3, _ scene4: Scene4,
        _ scene5: Scene5, _ scene6: Scene6, _ scene7: Scene7
    ) {
        self.scene0 = scene0
        self.scene1 = scene1
        self.scene2 = scene2
        self.scene3 = scene3
        self.scene4 = scene4
        self.scene5 = scene5
        self.scene6 = scene6
        self.scene7 = scene7

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
            .overlayed(with: scene2.commands)
            .overlayed(with: scene3.commands)
            .overlayed(with: scene4.commands)
            .overlayed(with: scene5.commands)
            .overlayed(with: scene6.commands)
            .overlayed(with: scene7.commands)
    }
}

public final class TupleSceneNode8<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene
>: SceneGraphNode {
    public typealias NodeScene = TupleScene8<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7
    >

    var node0: Scene0.Node
    var node1: Scene1.Node
    var node2: Scene2.Node
    var node3: Scene3.Node
    var node4: Scene4.Node
    var node5: Scene5.Node
    var node6: Scene6.Node
    var node7: Scene7.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
        node2 = Scene2.Node(from: scene.scene2, backend: backend, environment: environment)
        node3 = Scene3.Node(from: scene.scene3, backend: backend, environment: environment)
        node4 = Scene4.Node(from: scene.scene4, backend: backend, environment: environment)
        node5 = Scene5.Node(from: scene.scene5, backend: backend, environment: environment)
        node6 = Scene6.Node(from: scene.scene6, backend: backend, environment: environment)
        node7 = Scene7.Node(from: scene.scene7, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
        node2.update(newScene?.scene2, backend: backend, environment: environment)
        node3.update(newScene?.scene3, backend: backend, environment: environment)
        node4.update(newScene?.scene4, backend: backend, environment: environment)
        node5.update(newScene?.scene5, backend: backend, environment: environment)
        node6.update(newScene?.scene6, backend: backend, environment: environment)
        node7.update(newScene?.scene7, backend: backend, environment: environment)
    }
}
public struct TupleScene9<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene
>: Scene {
    public typealias Node = TupleSceneNode9<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8
    >

    var scene0: Scene0
    var scene1: Scene1
    var scene2: Scene2
    var scene3: Scene3
    var scene4: Scene4
    var scene5: Scene5
    var scene6: Scene6
    var scene7: Scene7
    var scene8: Scene8

    public var commands: Commands

    public init(
        _ scene0: Scene0, _ scene1: Scene1, _ scene2: Scene2, _ scene3: Scene3, _ scene4: Scene4,
        _ scene5: Scene5, _ scene6: Scene6, _ scene7: Scene7, _ scene8: Scene8
    ) {
        self.scene0 = scene0
        self.scene1 = scene1
        self.scene2 = scene2
        self.scene3 = scene3
        self.scene4 = scene4
        self.scene5 = scene5
        self.scene6 = scene6
        self.scene7 = scene7
        self.scene8 = scene8

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
            .overlayed(with: scene2.commands)
            .overlayed(with: scene3.commands)
            .overlayed(with: scene4.commands)
            .overlayed(with: scene5.commands)
            .overlayed(with: scene6.commands)
            .overlayed(with: scene7.commands)
            .overlayed(with: scene8.commands)
    }
}

public final class TupleSceneNode9<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene
>: SceneGraphNode {
    public typealias NodeScene = TupleScene9<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8
    >

    var node0: Scene0.Node
    var node1: Scene1.Node
    var node2: Scene2.Node
    var node3: Scene3.Node
    var node4: Scene4.Node
    var node5: Scene5.Node
    var node6: Scene6.Node
    var node7: Scene7.Node
    var node8: Scene8.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
        node2 = Scene2.Node(from: scene.scene2, backend: backend, environment: environment)
        node3 = Scene3.Node(from: scene.scene3, backend: backend, environment: environment)
        node4 = Scene4.Node(from: scene.scene4, backend: backend, environment: environment)
        node5 = Scene5.Node(from: scene.scene5, backend: backend, environment: environment)
        node6 = Scene6.Node(from: scene.scene6, backend: backend, environment: environment)
        node7 = Scene7.Node(from: scene.scene7, backend: backend, environment: environment)
        node8 = Scene8.Node(from: scene.scene8, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
        node2.update(newScene?.scene2, backend: backend, environment: environment)
        node3.update(newScene?.scene3, backend: backend, environment: environment)
        node4.update(newScene?.scene4, backend: backend, environment: environment)
        node5.update(newScene?.scene5, backend: backend, environment: environment)
        node6.update(newScene?.scene6, backend: backend, environment: environment)
        node7.update(newScene?.scene7, backend: backend, environment: environment)
        node8.update(newScene?.scene8, backend: backend, environment: environment)
    }
}
public struct TupleScene10<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene
>: Scene {
    public typealias Node = TupleSceneNode10<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9
    >

    var scene0: Scene0
    var scene1: Scene1
    var scene2: Scene2
    var scene3: Scene3
    var scene4: Scene4
    var scene5: Scene5
    var scene6: Scene6
    var scene7: Scene7
    var scene8: Scene8
    var scene9: Scene9

    public var commands: Commands

    public init(
        _ scene0: Scene0, _ scene1: Scene1, _ scene2: Scene2, _ scene3: Scene3, _ scene4: Scene4,
        _ scene5: Scene5, _ scene6: Scene6, _ scene7: Scene7, _ scene8: Scene8, _ scene9: Scene9
    ) {
        self.scene0 = scene0
        self.scene1 = scene1
        self.scene2 = scene2
        self.scene3 = scene3
        self.scene4 = scene4
        self.scene5 = scene5
        self.scene6 = scene6
        self.scene7 = scene7
        self.scene8 = scene8
        self.scene9 = scene9

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
            .overlayed(with: scene2.commands)
            .overlayed(with: scene3.commands)
            .overlayed(with: scene4.commands)
            .overlayed(with: scene5.commands)
            .overlayed(with: scene6.commands)
            .overlayed(with: scene7.commands)
            .overlayed(with: scene8.commands)
            .overlayed(with: scene9.commands)
    }
}

public final class TupleSceneNode10<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene
>: SceneGraphNode {
    public typealias NodeScene = TupleScene10<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9
    >

    var node0: Scene0.Node
    var node1: Scene1.Node
    var node2: Scene2.Node
    var node3: Scene3.Node
    var node4: Scene4.Node
    var node5: Scene5.Node
    var node6: Scene6.Node
    var node7: Scene7.Node
    var node8: Scene8.Node
    var node9: Scene9.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
        node2 = Scene2.Node(from: scene.scene2, backend: backend, environment: environment)
        node3 = Scene3.Node(from: scene.scene3, backend: backend, environment: environment)
        node4 = Scene4.Node(from: scene.scene4, backend: backend, environment: environment)
        node5 = Scene5.Node(from: scene.scene5, backend: backend, environment: environment)
        node6 = Scene6.Node(from: scene.scene6, backend: backend, environment: environment)
        node7 = Scene7.Node(from: scene.scene7, backend: backend, environment: environment)
        node8 = Scene8.Node(from: scene.scene8, backend: backend, environment: environment)
        node9 = Scene9.Node(from: scene.scene9, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
        node2.update(newScene?.scene2, backend: backend, environment: environment)
        node3.update(newScene?.scene3, backend: backend, environment: environment)
        node4.update(newScene?.scene4, backend: backend, environment: environment)
        node5.update(newScene?.scene5, backend: backend, environment: environment)
        node6.update(newScene?.scene6, backend: backend, environment: environment)
        node7.update(newScene?.scene7, backend: backend, environment: environment)
        node8.update(newScene?.scene8, backend: backend, environment: environment)
        node9.update(newScene?.scene9, backend: backend, environment: environment)
    }
}
public struct TupleScene11<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene
>: Scene {
    public typealias Node = TupleSceneNode11<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10
    >

    var scene0: Scene0
    var scene1: Scene1
    var scene2: Scene2
    var scene3: Scene3
    var scene4: Scene4
    var scene5: Scene5
    var scene6: Scene6
    var scene7: Scene7
    var scene8: Scene8
    var scene9: Scene9
    var scene10: Scene10

    public var commands: Commands

    public init(
        _ scene0: Scene0, _ scene1: Scene1, _ scene2: Scene2, _ scene3: Scene3, _ scene4: Scene4,
        _ scene5: Scene5, _ scene6: Scene6, _ scene7: Scene7, _ scene8: Scene8, _ scene9: Scene9,
        _ scene10: Scene10
    ) {
        self.scene0 = scene0
        self.scene1 = scene1
        self.scene2 = scene2
        self.scene3 = scene3
        self.scene4 = scene4
        self.scene5 = scene5
        self.scene6 = scene6
        self.scene7 = scene7
        self.scene8 = scene8
        self.scene9 = scene9
        self.scene10 = scene10

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
            .overlayed(with: scene2.commands)
            .overlayed(with: scene3.commands)
            .overlayed(with: scene4.commands)
            .overlayed(with: scene5.commands)
            .overlayed(with: scene6.commands)
            .overlayed(with: scene7.commands)
            .overlayed(with: scene8.commands)
            .overlayed(with: scene9.commands)
            .overlayed(with: scene10.commands)
    }
}

public final class TupleSceneNode11<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene
>: SceneGraphNode {
    public typealias NodeScene = TupleScene11<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10
    >

    var node0: Scene0.Node
    var node1: Scene1.Node
    var node2: Scene2.Node
    var node3: Scene3.Node
    var node4: Scene4.Node
    var node5: Scene5.Node
    var node6: Scene6.Node
    var node7: Scene7.Node
    var node8: Scene8.Node
    var node9: Scene9.Node
    var node10: Scene10.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
        node2 = Scene2.Node(from: scene.scene2, backend: backend, environment: environment)
        node3 = Scene3.Node(from: scene.scene3, backend: backend, environment: environment)
        node4 = Scene4.Node(from: scene.scene4, backend: backend, environment: environment)
        node5 = Scene5.Node(from: scene.scene5, backend: backend, environment: environment)
        node6 = Scene6.Node(from: scene.scene6, backend: backend, environment: environment)
        node7 = Scene7.Node(from: scene.scene7, backend: backend, environment: environment)
        node8 = Scene8.Node(from: scene.scene8, backend: backend, environment: environment)
        node9 = Scene9.Node(from: scene.scene9, backend: backend, environment: environment)
        node10 = Scene10.Node(from: scene.scene10, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
        node2.update(newScene?.scene2, backend: backend, environment: environment)
        node3.update(newScene?.scene3, backend: backend, environment: environment)
        node4.update(newScene?.scene4, backend: backend, environment: environment)
        node5.update(newScene?.scene5, backend: backend, environment: environment)
        node6.update(newScene?.scene6, backend: backend, environment: environment)
        node7.update(newScene?.scene7, backend: backend, environment: environment)
        node8.update(newScene?.scene8, backend: backend, environment: environment)
        node9.update(newScene?.scene9, backend: backend, environment: environment)
        node10.update(newScene?.scene10, backend: backend, environment: environment)
    }
}
public struct TupleScene12<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene, Scene11: Scene
>: Scene {
    public typealias Node = TupleSceneNode12<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10,
        Scene11
    >

    var scene0: Scene0
    var scene1: Scene1
    var scene2: Scene2
    var scene3: Scene3
    var scene4: Scene4
    var scene5: Scene5
    var scene6: Scene6
    var scene7: Scene7
    var scene8: Scene8
    var scene9: Scene9
    var scene10: Scene10
    var scene11: Scene11

    public var commands: Commands

    public init(
        _ scene0: Scene0, _ scene1: Scene1, _ scene2: Scene2, _ scene3: Scene3, _ scene4: Scene4,
        _ scene5: Scene5, _ scene6: Scene6, _ scene7: Scene7, _ scene8: Scene8, _ scene9: Scene9,
        _ scene10: Scene10, _ scene11: Scene11
    ) {
        self.scene0 = scene0
        self.scene1 = scene1
        self.scene2 = scene2
        self.scene3 = scene3
        self.scene4 = scene4
        self.scene5 = scene5
        self.scene6 = scene6
        self.scene7 = scene7
        self.scene8 = scene8
        self.scene9 = scene9
        self.scene10 = scene10
        self.scene11 = scene11

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
            .overlayed(with: scene2.commands)
            .overlayed(with: scene3.commands)
            .overlayed(with: scene4.commands)
            .overlayed(with: scene5.commands)
            .overlayed(with: scene6.commands)
            .overlayed(with: scene7.commands)
            .overlayed(with: scene8.commands)
            .overlayed(with: scene9.commands)
            .overlayed(with: scene10.commands)
            .overlayed(with: scene11.commands)
    }
}

public final class TupleSceneNode12<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene, Scene11: Scene
>: SceneGraphNode {
    public typealias NodeScene = TupleScene12<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10,
        Scene11
    >

    var node0: Scene0.Node
    var node1: Scene1.Node
    var node2: Scene2.Node
    var node3: Scene3.Node
    var node4: Scene4.Node
    var node5: Scene5.Node
    var node6: Scene6.Node
    var node7: Scene7.Node
    var node8: Scene8.Node
    var node9: Scene9.Node
    var node10: Scene10.Node
    var node11: Scene11.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
        node2 = Scene2.Node(from: scene.scene2, backend: backend, environment: environment)
        node3 = Scene3.Node(from: scene.scene3, backend: backend, environment: environment)
        node4 = Scene4.Node(from: scene.scene4, backend: backend, environment: environment)
        node5 = Scene5.Node(from: scene.scene5, backend: backend, environment: environment)
        node6 = Scene6.Node(from: scene.scene6, backend: backend, environment: environment)
        node7 = Scene7.Node(from: scene.scene7, backend: backend, environment: environment)
        node8 = Scene8.Node(from: scene.scene8, backend: backend, environment: environment)
        node9 = Scene9.Node(from: scene.scene9, backend: backend, environment: environment)
        node10 = Scene10.Node(from: scene.scene10, backend: backend, environment: environment)
        node11 = Scene11.Node(from: scene.scene11, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
        node2.update(newScene?.scene2, backend: backend, environment: environment)
        node3.update(newScene?.scene3, backend: backend, environment: environment)
        node4.update(newScene?.scene4, backend: backend, environment: environment)
        node5.update(newScene?.scene5, backend: backend, environment: environment)
        node6.update(newScene?.scene6, backend: backend, environment: environment)
        node7.update(newScene?.scene7, backend: backend, environment: environment)
        node8.update(newScene?.scene8, backend: backend, environment: environment)
        node9.update(newScene?.scene9, backend: backend, environment: environment)
        node10.update(newScene?.scene10, backend: backend, environment: environment)
        node11.update(newScene?.scene11, backend: backend, environment: environment)
    }
}
public struct TupleScene13<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene, Scene11: Scene,
    Scene12: Scene
>: Scene {
    public typealias Node = TupleSceneNode13<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10,
        Scene11, Scene12
    >

    var scene0: Scene0
    var scene1: Scene1
    var scene2: Scene2
    var scene3: Scene3
    var scene4: Scene4
    var scene5: Scene5
    var scene6: Scene6
    var scene7: Scene7
    var scene8: Scene8
    var scene9: Scene9
    var scene10: Scene10
    var scene11: Scene11
    var scene12: Scene12

    public var commands: Commands

    public init(
        _ scene0: Scene0, _ scene1: Scene1, _ scene2: Scene2, _ scene3: Scene3, _ scene4: Scene4,
        _ scene5: Scene5, _ scene6: Scene6, _ scene7: Scene7, _ scene8: Scene8, _ scene9: Scene9,
        _ scene10: Scene10, _ scene11: Scene11, _ scene12: Scene12
    ) {
        self.scene0 = scene0
        self.scene1 = scene1
        self.scene2 = scene2
        self.scene3 = scene3
        self.scene4 = scene4
        self.scene5 = scene5
        self.scene6 = scene6
        self.scene7 = scene7
        self.scene8 = scene8
        self.scene9 = scene9
        self.scene10 = scene10
        self.scene11 = scene11
        self.scene12 = scene12

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
            .overlayed(with: scene2.commands)
            .overlayed(with: scene3.commands)
            .overlayed(with: scene4.commands)
            .overlayed(with: scene5.commands)
            .overlayed(with: scene6.commands)
            .overlayed(with: scene7.commands)
            .overlayed(with: scene8.commands)
            .overlayed(with: scene9.commands)
            .overlayed(with: scene10.commands)
            .overlayed(with: scene11.commands)
            .overlayed(with: scene12.commands)
    }
}

public final class TupleSceneNode13<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene, Scene11: Scene,
    Scene12: Scene
>: SceneGraphNode {
    public typealias NodeScene = TupleScene13<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10,
        Scene11, Scene12
    >

    var node0: Scene0.Node
    var node1: Scene1.Node
    var node2: Scene2.Node
    var node3: Scene3.Node
    var node4: Scene4.Node
    var node5: Scene5.Node
    var node6: Scene6.Node
    var node7: Scene7.Node
    var node8: Scene8.Node
    var node9: Scene9.Node
    var node10: Scene10.Node
    var node11: Scene11.Node
    var node12: Scene12.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
        node2 = Scene2.Node(from: scene.scene2, backend: backend, environment: environment)
        node3 = Scene3.Node(from: scene.scene3, backend: backend, environment: environment)
        node4 = Scene4.Node(from: scene.scene4, backend: backend, environment: environment)
        node5 = Scene5.Node(from: scene.scene5, backend: backend, environment: environment)
        node6 = Scene6.Node(from: scene.scene6, backend: backend, environment: environment)
        node7 = Scene7.Node(from: scene.scene7, backend: backend, environment: environment)
        node8 = Scene8.Node(from: scene.scene8, backend: backend, environment: environment)
        node9 = Scene9.Node(from: scene.scene9, backend: backend, environment: environment)
        node10 = Scene10.Node(from: scene.scene10, backend: backend, environment: environment)
        node11 = Scene11.Node(from: scene.scene11, backend: backend, environment: environment)
        node12 = Scene12.Node(from: scene.scene12, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
        node2.update(newScene?.scene2, backend: backend, environment: environment)
        node3.update(newScene?.scene3, backend: backend, environment: environment)
        node4.update(newScene?.scene4, backend: backend, environment: environment)
        node5.update(newScene?.scene5, backend: backend, environment: environment)
        node6.update(newScene?.scene6, backend: backend, environment: environment)
        node7.update(newScene?.scene7, backend: backend, environment: environment)
        node8.update(newScene?.scene8, backend: backend, environment: environment)
        node9.update(newScene?.scene9, backend: backend, environment: environment)
        node10.update(newScene?.scene10, backend: backend, environment: environment)
        node11.update(newScene?.scene11, backend: backend, environment: environment)
        node12.update(newScene?.scene12, backend: backend, environment: environment)
    }
}
public struct TupleScene14<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene, Scene11: Scene,
    Scene12: Scene, Scene13: Scene
>: Scene {
    public typealias Node = TupleSceneNode14<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10,
        Scene11, Scene12, Scene13
    >

    var scene0: Scene0
    var scene1: Scene1
    var scene2: Scene2
    var scene3: Scene3
    var scene4: Scene4
    var scene5: Scene5
    var scene6: Scene6
    var scene7: Scene7
    var scene8: Scene8
    var scene9: Scene9
    var scene10: Scene10
    var scene11: Scene11
    var scene12: Scene12
    var scene13: Scene13

    public var commands: Commands

    public init(
        _ scene0: Scene0, _ scene1: Scene1, _ scene2: Scene2, _ scene3: Scene3, _ scene4: Scene4,
        _ scene5: Scene5, _ scene6: Scene6, _ scene7: Scene7, _ scene8: Scene8, _ scene9: Scene9,
        _ scene10: Scene10, _ scene11: Scene11, _ scene12: Scene12, _ scene13: Scene13
    ) {
        self.scene0 = scene0
        self.scene1 = scene1
        self.scene2 = scene2
        self.scene3 = scene3
        self.scene4 = scene4
        self.scene5 = scene5
        self.scene6 = scene6
        self.scene7 = scene7
        self.scene8 = scene8
        self.scene9 = scene9
        self.scene10 = scene10
        self.scene11 = scene11
        self.scene12 = scene12
        self.scene13 = scene13

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
            .overlayed(with: scene2.commands)
            .overlayed(with: scene3.commands)
            .overlayed(with: scene4.commands)
            .overlayed(with: scene5.commands)
            .overlayed(with: scene6.commands)
            .overlayed(with: scene7.commands)
            .overlayed(with: scene8.commands)
            .overlayed(with: scene9.commands)
            .overlayed(with: scene10.commands)
            .overlayed(with: scene11.commands)
            .overlayed(with: scene12.commands)
            .overlayed(with: scene13.commands)
    }
}

public final class TupleSceneNode14<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene, Scene11: Scene,
    Scene12: Scene, Scene13: Scene
>: SceneGraphNode {
    public typealias NodeScene = TupleScene14<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10,
        Scene11, Scene12, Scene13
    >

    var node0: Scene0.Node
    var node1: Scene1.Node
    var node2: Scene2.Node
    var node3: Scene3.Node
    var node4: Scene4.Node
    var node5: Scene5.Node
    var node6: Scene6.Node
    var node7: Scene7.Node
    var node8: Scene8.Node
    var node9: Scene9.Node
    var node10: Scene10.Node
    var node11: Scene11.Node
    var node12: Scene12.Node
    var node13: Scene13.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
        node2 = Scene2.Node(from: scene.scene2, backend: backend, environment: environment)
        node3 = Scene3.Node(from: scene.scene3, backend: backend, environment: environment)
        node4 = Scene4.Node(from: scene.scene4, backend: backend, environment: environment)
        node5 = Scene5.Node(from: scene.scene5, backend: backend, environment: environment)
        node6 = Scene6.Node(from: scene.scene6, backend: backend, environment: environment)
        node7 = Scene7.Node(from: scene.scene7, backend: backend, environment: environment)
        node8 = Scene8.Node(from: scene.scene8, backend: backend, environment: environment)
        node9 = Scene9.Node(from: scene.scene9, backend: backend, environment: environment)
        node10 = Scene10.Node(from: scene.scene10, backend: backend, environment: environment)
        node11 = Scene11.Node(from: scene.scene11, backend: backend, environment: environment)
        node12 = Scene12.Node(from: scene.scene12, backend: backend, environment: environment)
        node13 = Scene13.Node(from: scene.scene13, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
        node2.update(newScene?.scene2, backend: backend, environment: environment)
        node3.update(newScene?.scene3, backend: backend, environment: environment)
        node4.update(newScene?.scene4, backend: backend, environment: environment)
        node5.update(newScene?.scene5, backend: backend, environment: environment)
        node6.update(newScene?.scene6, backend: backend, environment: environment)
        node7.update(newScene?.scene7, backend: backend, environment: environment)
        node8.update(newScene?.scene8, backend: backend, environment: environment)
        node9.update(newScene?.scene9, backend: backend, environment: environment)
        node10.update(newScene?.scene10, backend: backend, environment: environment)
        node11.update(newScene?.scene11, backend: backend, environment: environment)
        node12.update(newScene?.scene12, backend: backend, environment: environment)
        node13.update(newScene?.scene13, backend: backend, environment: environment)
    }
}
public struct TupleScene15<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene, Scene11: Scene,
    Scene12: Scene, Scene13: Scene, Scene14: Scene
>: Scene {
    public typealias Node = TupleSceneNode15<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10,
        Scene11, Scene12, Scene13, Scene14
    >

    var scene0: Scene0
    var scene1: Scene1
    var scene2: Scene2
    var scene3: Scene3
    var scene4: Scene4
    var scene5: Scene5
    var scene6: Scene6
    var scene7: Scene7
    var scene8: Scene8
    var scene9: Scene9
    var scene10: Scene10
    var scene11: Scene11
    var scene12: Scene12
    var scene13: Scene13
    var scene14: Scene14

    public var commands: Commands

    public init(
        _ scene0: Scene0, _ scene1: Scene1, _ scene2: Scene2, _ scene3: Scene3, _ scene4: Scene4,
        _ scene5: Scene5, _ scene6: Scene6, _ scene7: Scene7, _ scene8: Scene8, _ scene9: Scene9,
        _ scene10: Scene10, _ scene11: Scene11, _ scene12: Scene12, _ scene13: Scene13,
        _ scene14: Scene14
    ) {
        self.scene0 = scene0
        self.scene1 = scene1
        self.scene2 = scene2
        self.scene3 = scene3
        self.scene4 = scene4
        self.scene5 = scene5
        self.scene6 = scene6
        self.scene7 = scene7
        self.scene8 = scene8
        self.scene9 = scene9
        self.scene10 = scene10
        self.scene11 = scene11
        self.scene12 = scene12
        self.scene13 = scene13
        self.scene14 = scene14

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
            .overlayed(with: scene2.commands)
            .overlayed(with: scene3.commands)
            .overlayed(with: scene4.commands)
            .overlayed(with: scene5.commands)
            .overlayed(with: scene6.commands)
            .overlayed(with: scene7.commands)
            .overlayed(with: scene8.commands)
            .overlayed(with: scene9.commands)
            .overlayed(with: scene10.commands)
            .overlayed(with: scene11.commands)
            .overlayed(with: scene12.commands)
            .overlayed(with: scene13.commands)
            .overlayed(with: scene14.commands)
    }
}

public final class TupleSceneNode15<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene, Scene11: Scene,
    Scene12: Scene, Scene13: Scene, Scene14: Scene
>: SceneGraphNode {
    public typealias NodeScene = TupleScene15<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10,
        Scene11, Scene12, Scene13, Scene14
    >

    var node0: Scene0.Node
    var node1: Scene1.Node
    var node2: Scene2.Node
    var node3: Scene3.Node
    var node4: Scene4.Node
    var node5: Scene5.Node
    var node6: Scene6.Node
    var node7: Scene7.Node
    var node8: Scene8.Node
    var node9: Scene9.Node
    var node10: Scene10.Node
    var node11: Scene11.Node
    var node12: Scene12.Node
    var node13: Scene13.Node
    var node14: Scene14.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
        node2 = Scene2.Node(from: scene.scene2, backend: backend, environment: environment)
        node3 = Scene3.Node(from: scene.scene3, backend: backend, environment: environment)
        node4 = Scene4.Node(from: scene.scene4, backend: backend, environment: environment)
        node5 = Scene5.Node(from: scene.scene5, backend: backend, environment: environment)
        node6 = Scene6.Node(from: scene.scene6, backend: backend, environment: environment)
        node7 = Scene7.Node(from: scene.scene7, backend: backend, environment: environment)
        node8 = Scene8.Node(from: scene.scene8, backend: backend, environment: environment)
        node9 = Scene9.Node(from: scene.scene9, backend: backend, environment: environment)
        node10 = Scene10.Node(from: scene.scene10, backend: backend, environment: environment)
        node11 = Scene11.Node(from: scene.scene11, backend: backend, environment: environment)
        node12 = Scene12.Node(from: scene.scene12, backend: backend, environment: environment)
        node13 = Scene13.Node(from: scene.scene13, backend: backend, environment: environment)
        node14 = Scene14.Node(from: scene.scene14, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
        node2.update(newScene?.scene2, backend: backend, environment: environment)
        node3.update(newScene?.scene3, backend: backend, environment: environment)
        node4.update(newScene?.scene4, backend: backend, environment: environment)
        node5.update(newScene?.scene5, backend: backend, environment: environment)
        node6.update(newScene?.scene6, backend: backend, environment: environment)
        node7.update(newScene?.scene7, backend: backend, environment: environment)
        node8.update(newScene?.scene8, backend: backend, environment: environment)
        node9.update(newScene?.scene9, backend: backend, environment: environment)
        node10.update(newScene?.scene10, backend: backend, environment: environment)
        node11.update(newScene?.scene11, backend: backend, environment: environment)
        node12.update(newScene?.scene12, backend: backend, environment: environment)
        node13.update(newScene?.scene13, backend: backend, environment: environment)
        node14.update(newScene?.scene14, backend: backend, environment: environment)
    }
}
public struct TupleScene16<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene, Scene11: Scene,
    Scene12: Scene, Scene13: Scene, Scene14: Scene, Scene15: Scene
>: Scene {
    public typealias Node = TupleSceneNode16<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10,
        Scene11, Scene12, Scene13, Scene14, Scene15
    >

    var scene0: Scene0
    var scene1: Scene1
    var scene2: Scene2
    var scene3: Scene3
    var scene4: Scene4
    var scene5: Scene5
    var scene6: Scene6
    var scene7: Scene7
    var scene8: Scene8
    var scene9: Scene9
    var scene10: Scene10
    var scene11: Scene11
    var scene12: Scene12
    var scene13: Scene13
    var scene14: Scene14
    var scene15: Scene15

    public var commands: Commands

    public init(
        _ scene0: Scene0, _ scene1: Scene1, _ scene2: Scene2, _ scene3: Scene3, _ scene4: Scene4,
        _ scene5: Scene5, _ scene6: Scene6, _ scene7: Scene7, _ scene8: Scene8, _ scene9: Scene9,
        _ scene10: Scene10, _ scene11: Scene11, _ scene12: Scene12, _ scene13: Scene13,
        _ scene14: Scene14, _ scene15: Scene15
    ) {
        self.scene0 = scene0
        self.scene1 = scene1
        self.scene2 = scene2
        self.scene3 = scene3
        self.scene4 = scene4
        self.scene5 = scene5
        self.scene6 = scene6
        self.scene7 = scene7
        self.scene8 = scene8
        self.scene9 = scene9
        self.scene10 = scene10
        self.scene11 = scene11
        self.scene12 = scene12
        self.scene13 = scene13
        self.scene14 = scene14
        self.scene15 = scene15

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
            .overlayed(with: scene2.commands)
            .overlayed(with: scene3.commands)
            .overlayed(with: scene4.commands)
            .overlayed(with: scene5.commands)
            .overlayed(with: scene6.commands)
            .overlayed(with: scene7.commands)
            .overlayed(with: scene8.commands)
            .overlayed(with: scene9.commands)
            .overlayed(with: scene10.commands)
            .overlayed(with: scene11.commands)
            .overlayed(with: scene12.commands)
            .overlayed(with: scene13.commands)
            .overlayed(with: scene14.commands)
            .overlayed(with: scene15.commands)
    }
}

public final class TupleSceneNode16<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene, Scene11: Scene,
    Scene12: Scene, Scene13: Scene, Scene14: Scene, Scene15: Scene
>: SceneGraphNode {
    public typealias NodeScene = TupleScene16<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10,
        Scene11, Scene12, Scene13, Scene14, Scene15
    >

    var node0: Scene0.Node
    var node1: Scene1.Node
    var node2: Scene2.Node
    var node3: Scene3.Node
    var node4: Scene4.Node
    var node5: Scene5.Node
    var node6: Scene6.Node
    var node7: Scene7.Node
    var node8: Scene8.Node
    var node9: Scene9.Node
    var node10: Scene10.Node
    var node11: Scene11.Node
    var node12: Scene12.Node
    var node13: Scene13.Node
    var node14: Scene14.Node
    var node15: Scene15.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
        node2 = Scene2.Node(from: scene.scene2, backend: backend, environment: environment)
        node3 = Scene3.Node(from: scene.scene3, backend: backend, environment: environment)
        node4 = Scene4.Node(from: scene.scene4, backend: backend, environment: environment)
        node5 = Scene5.Node(from: scene.scene5, backend: backend, environment: environment)
        node6 = Scene6.Node(from: scene.scene6, backend: backend, environment: environment)
        node7 = Scene7.Node(from: scene.scene7, backend: backend, environment: environment)
        node8 = Scene8.Node(from: scene.scene8, backend: backend, environment: environment)
        node9 = Scene9.Node(from: scene.scene9, backend: backend, environment: environment)
        node10 = Scene10.Node(from: scene.scene10, backend: backend, environment: environment)
        node11 = Scene11.Node(from: scene.scene11, backend: backend, environment: environment)
        node12 = Scene12.Node(from: scene.scene12, backend: backend, environment: environment)
        node13 = Scene13.Node(from: scene.scene13, backend: backend, environment: environment)
        node14 = Scene14.Node(from: scene.scene14, backend: backend, environment: environment)
        node15 = Scene15.Node(from: scene.scene15, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
        node2.update(newScene?.scene2, backend: backend, environment: environment)
        node3.update(newScene?.scene3, backend: backend, environment: environment)
        node4.update(newScene?.scene4, backend: backend, environment: environment)
        node5.update(newScene?.scene5, backend: backend, environment: environment)
        node6.update(newScene?.scene6, backend: backend, environment: environment)
        node7.update(newScene?.scene7, backend: backend, environment: environment)
        node8.update(newScene?.scene8, backend: backend, environment: environment)
        node9.update(newScene?.scene9, backend: backend, environment: environment)
        node10.update(newScene?.scene10, backend: backend, environment: environment)
        node11.update(newScene?.scene11, backend: backend, environment: environment)
        node12.update(newScene?.scene12, backend: backend, environment: environment)
        node13.update(newScene?.scene13, backend: backend, environment: environment)
        node14.update(newScene?.scene14, backend: backend, environment: environment)
        node15.update(newScene?.scene15, backend: backend, environment: environment)
    }
}
public struct TupleScene17<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene, Scene11: Scene,
    Scene12: Scene, Scene13: Scene, Scene14: Scene, Scene15: Scene, Scene16: Scene
>: Scene {
    public typealias Node = TupleSceneNode17<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10,
        Scene11, Scene12, Scene13, Scene14, Scene15, Scene16
    >

    var scene0: Scene0
    var scene1: Scene1
    var scene2: Scene2
    var scene3: Scene3
    var scene4: Scene4
    var scene5: Scene5
    var scene6: Scene6
    var scene7: Scene7
    var scene8: Scene8
    var scene9: Scene9
    var scene10: Scene10
    var scene11: Scene11
    var scene12: Scene12
    var scene13: Scene13
    var scene14: Scene14
    var scene15: Scene15
    var scene16: Scene16

    public var commands: Commands

    public init(
        _ scene0: Scene0, _ scene1: Scene1, _ scene2: Scene2, _ scene3: Scene3, _ scene4: Scene4,
        _ scene5: Scene5, _ scene6: Scene6, _ scene7: Scene7, _ scene8: Scene8, _ scene9: Scene9,
        _ scene10: Scene10, _ scene11: Scene11, _ scene12: Scene12, _ scene13: Scene13,
        _ scene14: Scene14, _ scene15: Scene15, _ scene16: Scene16
    ) {
        self.scene0 = scene0
        self.scene1 = scene1
        self.scene2 = scene2
        self.scene3 = scene3
        self.scene4 = scene4
        self.scene5 = scene5
        self.scene6 = scene6
        self.scene7 = scene7
        self.scene8 = scene8
        self.scene9 = scene9
        self.scene10 = scene10
        self.scene11 = scene11
        self.scene12 = scene12
        self.scene13 = scene13
        self.scene14 = scene14
        self.scene15 = scene15
        self.scene16 = scene16

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
            .overlayed(with: scene2.commands)
            .overlayed(with: scene3.commands)
            .overlayed(with: scene4.commands)
            .overlayed(with: scene5.commands)
            .overlayed(with: scene6.commands)
            .overlayed(with: scene7.commands)
            .overlayed(with: scene8.commands)
            .overlayed(with: scene9.commands)
            .overlayed(with: scene10.commands)
            .overlayed(with: scene11.commands)
            .overlayed(with: scene12.commands)
            .overlayed(with: scene13.commands)
            .overlayed(with: scene14.commands)
            .overlayed(with: scene15.commands)
            .overlayed(with: scene16.commands)
    }
}

public final class TupleSceneNode17<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene, Scene11: Scene,
    Scene12: Scene, Scene13: Scene, Scene14: Scene, Scene15: Scene, Scene16: Scene
>: SceneGraphNode {
    public typealias NodeScene = TupleScene17<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10,
        Scene11, Scene12, Scene13, Scene14, Scene15, Scene16
    >

    var node0: Scene0.Node
    var node1: Scene1.Node
    var node2: Scene2.Node
    var node3: Scene3.Node
    var node4: Scene4.Node
    var node5: Scene5.Node
    var node6: Scene6.Node
    var node7: Scene7.Node
    var node8: Scene8.Node
    var node9: Scene9.Node
    var node10: Scene10.Node
    var node11: Scene11.Node
    var node12: Scene12.Node
    var node13: Scene13.Node
    var node14: Scene14.Node
    var node15: Scene15.Node
    var node16: Scene16.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
        node2 = Scene2.Node(from: scene.scene2, backend: backend, environment: environment)
        node3 = Scene3.Node(from: scene.scene3, backend: backend, environment: environment)
        node4 = Scene4.Node(from: scene.scene4, backend: backend, environment: environment)
        node5 = Scene5.Node(from: scene.scene5, backend: backend, environment: environment)
        node6 = Scene6.Node(from: scene.scene6, backend: backend, environment: environment)
        node7 = Scene7.Node(from: scene.scene7, backend: backend, environment: environment)
        node8 = Scene8.Node(from: scene.scene8, backend: backend, environment: environment)
        node9 = Scene9.Node(from: scene.scene9, backend: backend, environment: environment)
        node10 = Scene10.Node(from: scene.scene10, backend: backend, environment: environment)
        node11 = Scene11.Node(from: scene.scene11, backend: backend, environment: environment)
        node12 = Scene12.Node(from: scene.scene12, backend: backend, environment: environment)
        node13 = Scene13.Node(from: scene.scene13, backend: backend, environment: environment)
        node14 = Scene14.Node(from: scene.scene14, backend: backend, environment: environment)
        node15 = Scene15.Node(from: scene.scene15, backend: backend, environment: environment)
        node16 = Scene16.Node(from: scene.scene16, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
        node2.update(newScene?.scene2, backend: backend, environment: environment)
        node3.update(newScene?.scene3, backend: backend, environment: environment)
        node4.update(newScene?.scene4, backend: backend, environment: environment)
        node5.update(newScene?.scene5, backend: backend, environment: environment)
        node6.update(newScene?.scene6, backend: backend, environment: environment)
        node7.update(newScene?.scene7, backend: backend, environment: environment)
        node8.update(newScene?.scene8, backend: backend, environment: environment)
        node9.update(newScene?.scene9, backend: backend, environment: environment)
        node10.update(newScene?.scene10, backend: backend, environment: environment)
        node11.update(newScene?.scene11, backend: backend, environment: environment)
        node12.update(newScene?.scene12, backend: backend, environment: environment)
        node13.update(newScene?.scene13, backend: backend, environment: environment)
        node14.update(newScene?.scene14, backend: backend, environment: environment)
        node15.update(newScene?.scene15, backend: backend, environment: environment)
        node16.update(newScene?.scene16, backend: backend, environment: environment)
    }
}
public struct TupleScene18<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene, Scene11: Scene,
    Scene12: Scene, Scene13: Scene, Scene14: Scene, Scene15: Scene, Scene16: Scene, Scene17: Scene
>: Scene {
    public typealias Node = TupleSceneNode18<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10,
        Scene11, Scene12, Scene13, Scene14, Scene15, Scene16, Scene17
    >

    var scene0: Scene0
    var scene1: Scene1
    var scene2: Scene2
    var scene3: Scene3
    var scene4: Scene4
    var scene5: Scene5
    var scene6: Scene6
    var scene7: Scene7
    var scene8: Scene8
    var scene9: Scene9
    var scene10: Scene10
    var scene11: Scene11
    var scene12: Scene12
    var scene13: Scene13
    var scene14: Scene14
    var scene15: Scene15
    var scene16: Scene16
    var scene17: Scene17

    public var commands: Commands

    public init(
        _ scene0: Scene0, _ scene1: Scene1, _ scene2: Scene2, _ scene3: Scene3, _ scene4: Scene4,
        _ scene5: Scene5, _ scene6: Scene6, _ scene7: Scene7, _ scene8: Scene8, _ scene9: Scene9,
        _ scene10: Scene10, _ scene11: Scene11, _ scene12: Scene12, _ scene13: Scene13,
        _ scene14: Scene14, _ scene15: Scene15, _ scene16: Scene16, _ scene17: Scene17
    ) {
        self.scene0 = scene0
        self.scene1 = scene1
        self.scene2 = scene2
        self.scene3 = scene3
        self.scene4 = scene4
        self.scene5 = scene5
        self.scene6 = scene6
        self.scene7 = scene7
        self.scene8 = scene8
        self.scene9 = scene9
        self.scene10 = scene10
        self.scene11 = scene11
        self.scene12 = scene12
        self.scene13 = scene13
        self.scene14 = scene14
        self.scene15 = scene15
        self.scene16 = scene16
        self.scene17 = scene17

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
            .overlayed(with: scene2.commands)
            .overlayed(with: scene3.commands)
            .overlayed(with: scene4.commands)
            .overlayed(with: scene5.commands)
            .overlayed(with: scene6.commands)
            .overlayed(with: scene7.commands)
            .overlayed(with: scene8.commands)
            .overlayed(with: scene9.commands)
            .overlayed(with: scene10.commands)
            .overlayed(with: scene11.commands)
            .overlayed(with: scene12.commands)
            .overlayed(with: scene13.commands)
            .overlayed(with: scene14.commands)
            .overlayed(with: scene15.commands)
            .overlayed(with: scene16.commands)
            .overlayed(with: scene17.commands)
    }
}

public final class TupleSceneNode18<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene, Scene11: Scene,
    Scene12: Scene, Scene13: Scene, Scene14: Scene, Scene15: Scene, Scene16: Scene, Scene17: Scene
>: SceneGraphNode {
    public typealias NodeScene = TupleScene18<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10,
        Scene11, Scene12, Scene13, Scene14, Scene15, Scene16, Scene17
    >

    var node0: Scene0.Node
    var node1: Scene1.Node
    var node2: Scene2.Node
    var node3: Scene3.Node
    var node4: Scene4.Node
    var node5: Scene5.Node
    var node6: Scene6.Node
    var node7: Scene7.Node
    var node8: Scene8.Node
    var node9: Scene9.Node
    var node10: Scene10.Node
    var node11: Scene11.Node
    var node12: Scene12.Node
    var node13: Scene13.Node
    var node14: Scene14.Node
    var node15: Scene15.Node
    var node16: Scene16.Node
    var node17: Scene17.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
        node2 = Scene2.Node(from: scene.scene2, backend: backend, environment: environment)
        node3 = Scene3.Node(from: scene.scene3, backend: backend, environment: environment)
        node4 = Scene4.Node(from: scene.scene4, backend: backend, environment: environment)
        node5 = Scene5.Node(from: scene.scene5, backend: backend, environment: environment)
        node6 = Scene6.Node(from: scene.scene6, backend: backend, environment: environment)
        node7 = Scene7.Node(from: scene.scene7, backend: backend, environment: environment)
        node8 = Scene8.Node(from: scene.scene8, backend: backend, environment: environment)
        node9 = Scene9.Node(from: scene.scene9, backend: backend, environment: environment)
        node10 = Scene10.Node(from: scene.scene10, backend: backend, environment: environment)
        node11 = Scene11.Node(from: scene.scene11, backend: backend, environment: environment)
        node12 = Scene12.Node(from: scene.scene12, backend: backend, environment: environment)
        node13 = Scene13.Node(from: scene.scene13, backend: backend, environment: environment)
        node14 = Scene14.Node(from: scene.scene14, backend: backend, environment: environment)
        node15 = Scene15.Node(from: scene.scene15, backend: backend, environment: environment)
        node16 = Scene16.Node(from: scene.scene16, backend: backend, environment: environment)
        node17 = Scene17.Node(from: scene.scene17, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
        node2.update(newScene?.scene2, backend: backend, environment: environment)
        node3.update(newScene?.scene3, backend: backend, environment: environment)
        node4.update(newScene?.scene4, backend: backend, environment: environment)
        node5.update(newScene?.scene5, backend: backend, environment: environment)
        node6.update(newScene?.scene6, backend: backend, environment: environment)
        node7.update(newScene?.scene7, backend: backend, environment: environment)
        node8.update(newScene?.scene8, backend: backend, environment: environment)
        node9.update(newScene?.scene9, backend: backend, environment: environment)
        node10.update(newScene?.scene10, backend: backend, environment: environment)
        node11.update(newScene?.scene11, backend: backend, environment: environment)
        node12.update(newScene?.scene12, backend: backend, environment: environment)
        node13.update(newScene?.scene13, backend: backend, environment: environment)
        node14.update(newScene?.scene14, backend: backend, environment: environment)
        node15.update(newScene?.scene15, backend: backend, environment: environment)
        node16.update(newScene?.scene16, backend: backend, environment: environment)
        node17.update(newScene?.scene17, backend: backend, environment: environment)
    }
}
public struct TupleScene19<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene, Scene11: Scene,
    Scene12: Scene, Scene13: Scene, Scene14: Scene, Scene15: Scene, Scene16: Scene, Scene17: Scene,
    Scene18: Scene
>: Scene {
    public typealias Node = TupleSceneNode19<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10,
        Scene11, Scene12, Scene13, Scene14, Scene15, Scene16, Scene17, Scene18
    >

    var scene0: Scene0
    var scene1: Scene1
    var scene2: Scene2
    var scene3: Scene3
    var scene4: Scene4
    var scene5: Scene5
    var scene6: Scene6
    var scene7: Scene7
    var scene8: Scene8
    var scene9: Scene9
    var scene10: Scene10
    var scene11: Scene11
    var scene12: Scene12
    var scene13: Scene13
    var scene14: Scene14
    var scene15: Scene15
    var scene16: Scene16
    var scene17: Scene17
    var scene18: Scene18

    public var commands: Commands

    public init(
        _ scene0: Scene0, _ scene1: Scene1, _ scene2: Scene2, _ scene3: Scene3, _ scene4: Scene4,
        _ scene5: Scene5, _ scene6: Scene6, _ scene7: Scene7, _ scene8: Scene8, _ scene9: Scene9,
        _ scene10: Scene10, _ scene11: Scene11, _ scene12: Scene12, _ scene13: Scene13,
        _ scene14: Scene14, _ scene15: Scene15, _ scene16: Scene16, _ scene17: Scene17,
        _ scene18: Scene18
    ) {
        self.scene0 = scene0
        self.scene1 = scene1
        self.scene2 = scene2
        self.scene3 = scene3
        self.scene4 = scene4
        self.scene5 = scene5
        self.scene6 = scene6
        self.scene7 = scene7
        self.scene8 = scene8
        self.scene9 = scene9
        self.scene10 = scene10
        self.scene11 = scene11
        self.scene12 = scene12
        self.scene13 = scene13
        self.scene14 = scene14
        self.scene15 = scene15
        self.scene16 = scene16
        self.scene17 = scene17
        self.scene18 = scene18

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
            .overlayed(with: scene2.commands)
            .overlayed(with: scene3.commands)
            .overlayed(with: scene4.commands)
            .overlayed(with: scene5.commands)
            .overlayed(with: scene6.commands)
            .overlayed(with: scene7.commands)
            .overlayed(with: scene8.commands)
            .overlayed(with: scene9.commands)
            .overlayed(with: scene10.commands)
            .overlayed(with: scene11.commands)
            .overlayed(with: scene12.commands)
            .overlayed(with: scene13.commands)
            .overlayed(with: scene14.commands)
            .overlayed(with: scene15.commands)
            .overlayed(with: scene16.commands)
            .overlayed(with: scene17.commands)
            .overlayed(with: scene18.commands)
    }
}

public final class TupleSceneNode19<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene, Scene11: Scene,
    Scene12: Scene, Scene13: Scene, Scene14: Scene, Scene15: Scene, Scene16: Scene, Scene17: Scene,
    Scene18: Scene
>: SceneGraphNode {
    public typealias NodeScene = TupleScene19<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10,
        Scene11, Scene12, Scene13, Scene14, Scene15, Scene16, Scene17, Scene18
    >

    var node0: Scene0.Node
    var node1: Scene1.Node
    var node2: Scene2.Node
    var node3: Scene3.Node
    var node4: Scene4.Node
    var node5: Scene5.Node
    var node6: Scene6.Node
    var node7: Scene7.Node
    var node8: Scene8.Node
    var node9: Scene9.Node
    var node10: Scene10.Node
    var node11: Scene11.Node
    var node12: Scene12.Node
    var node13: Scene13.Node
    var node14: Scene14.Node
    var node15: Scene15.Node
    var node16: Scene16.Node
    var node17: Scene17.Node
    var node18: Scene18.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
        node2 = Scene2.Node(from: scene.scene2, backend: backend, environment: environment)
        node3 = Scene3.Node(from: scene.scene3, backend: backend, environment: environment)
        node4 = Scene4.Node(from: scene.scene4, backend: backend, environment: environment)
        node5 = Scene5.Node(from: scene.scene5, backend: backend, environment: environment)
        node6 = Scene6.Node(from: scene.scene6, backend: backend, environment: environment)
        node7 = Scene7.Node(from: scene.scene7, backend: backend, environment: environment)
        node8 = Scene8.Node(from: scene.scene8, backend: backend, environment: environment)
        node9 = Scene9.Node(from: scene.scene9, backend: backend, environment: environment)
        node10 = Scene10.Node(from: scene.scene10, backend: backend, environment: environment)
        node11 = Scene11.Node(from: scene.scene11, backend: backend, environment: environment)
        node12 = Scene12.Node(from: scene.scene12, backend: backend, environment: environment)
        node13 = Scene13.Node(from: scene.scene13, backend: backend, environment: environment)
        node14 = Scene14.Node(from: scene.scene14, backend: backend, environment: environment)
        node15 = Scene15.Node(from: scene.scene15, backend: backend, environment: environment)
        node16 = Scene16.Node(from: scene.scene16, backend: backend, environment: environment)
        node17 = Scene17.Node(from: scene.scene17, backend: backend, environment: environment)
        node18 = Scene18.Node(from: scene.scene18, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
        node2.update(newScene?.scene2, backend: backend, environment: environment)
        node3.update(newScene?.scene3, backend: backend, environment: environment)
        node4.update(newScene?.scene4, backend: backend, environment: environment)
        node5.update(newScene?.scene5, backend: backend, environment: environment)
        node6.update(newScene?.scene6, backend: backend, environment: environment)
        node7.update(newScene?.scene7, backend: backend, environment: environment)
        node8.update(newScene?.scene8, backend: backend, environment: environment)
        node9.update(newScene?.scene9, backend: backend, environment: environment)
        node10.update(newScene?.scene10, backend: backend, environment: environment)
        node11.update(newScene?.scene11, backend: backend, environment: environment)
        node12.update(newScene?.scene12, backend: backend, environment: environment)
        node13.update(newScene?.scene13, backend: backend, environment: environment)
        node14.update(newScene?.scene14, backend: backend, environment: environment)
        node15.update(newScene?.scene15, backend: backend, environment: environment)
        node16.update(newScene?.scene16, backend: backend, environment: environment)
        node17.update(newScene?.scene17, backend: backend, environment: environment)
        node18.update(newScene?.scene18, backend: backend, environment: environment)
    }
}
public struct TupleScene20<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene, Scene11: Scene,
    Scene12: Scene, Scene13: Scene, Scene14: Scene, Scene15: Scene, Scene16: Scene, Scene17: Scene,
    Scene18: Scene, Scene19: Scene
>: Scene {
    public typealias Node = TupleSceneNode20<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10,
        Scene11, Scene12, Scene13, Scene14, Scene15, Scene16, Scene17, Scene18, Scene19
    >

    var scene0: Scene0
    var scene1: Scene1
    var scene2: Scene2
    var scene3: Scene3
    var scene4: Scene4
    var scene5: Scene5
    var scene6: Scene6
    var scene7: Scene7
    var scene8: Scene8
    var scene9: Scene9
    var scene10: Scene10
    var scene11: Scene11
    var scene12: Scene12
    var scene13: Scene13
    var scene14: Scene14
    var scene15: Scene15
    var scene16: Scene16
    var scene17: Scene17
    var scene18: Scene18
    var scene19: Scene19

    public var commands: Commands

    public init(
        _ scene0: Scene0, _ scene1: Scene1, _ scene2: Scene2, _ scene3: Scene3, _ scene4: Scene4,
        _ scene5: Scene5, _ scene6: Scene6, _ scene7: Scene7, _ scene8: Scene8, _ scene9: Scene9,
        _ scene10: Scene10, _ scene11: Scene11, _ scene12: Scene12, _ scene13: Scene13,
        _ scene14: Scene14, _ scene15: Scene15, _ scene16: Scene16, _ scene17: Scene17,
        _ scene18: Scene18, _ scene19: Scene19
    ) {
        self.scene0 = scene0
        self.scene1 = scene1
        self.scene2 = scene2
        self.scene3 = scene3
        self.scene4 = scene4
        self.scene5 = scene5
        self.scene6 = scene6
        self.scene7 = scene7
        self.scene8 = scene8
        self.scene9 = scene9
        self.scene10 = scene10
        self.scene11 = scene11
        self.scene12 = scene12
        self.scene13 = scene13
        self.scene14 = scene14
        self.scene15 = scene15
        self.scene16 = scene16
        self.scene17 = scene17
        self.scene18 = scene18
        self.scene19 = scene19

        commands = Commands.empty
            .overlayed(with: scene0.commands)
            .overlayed(with: scene1.commands)
            .overlayed(with: scene2.commands)
            .overlayed(with: scene3.commands)
            .overlayed(with: scene4.commands)
            .overlayed(with: scene5.commands)
            .overlayed(with: scene6.commands)
            .overlayed(with: scene7.commands)
            .overlayed(with: scene8.commands)
            .overlayed(with: scene9.commands)
            .overlayed(with: scene10.commands)
            .overlayed(with: scene11.commands)
            .overlayed(with: scene12.commands)
            .overlayed(with: scene13.commands)
            .overlayed(with: scene14.commands)
            .overlayed(with: scene15.commands)
            .overlayed(with: scene16.commands)
            .overlayed(with: scene17.commands)
            .overlayed(with: scene18.commands)
            .overlayed(with: scene19.commands)
    }
}

public final class TupleSceneNode20<
    Scene0: Scene, Scene1: Scene, Scene2: Scene, Scene3: Scene, Scene4: Scene, Scene5: Scene,
    Scene6: Scene, Scene7: Scene, Scene8: Scene, Scene9: Scene, Scene10: Scene, Scene11: Scene,
    Scene12: Scene, Scene13: Scene, Scene14: Scene, Scene15: Scene, Scene16: Scene, Scene17: Scene,
    Scene18: Scene, Scene19: Scene
>: SceneGraphNode {
    public typealias NodeScene = TupleScene20<
        Scene0, Scene1, Scene2, Scene3, Scene4, Scene5, Scene6, Scene7, Scene8, Scene9, Scene10,
        Scene11, Scene12, Scene13, Scene14, Scene15, Scene16, Scene17, Scene18, Scene19
    >

    var node0: Scene0.Node
    var node1: Scene1.Node
    var node2: Scene2.Node
    var node3: Scene3.Node
    var node4: Scene4.Node
    var node5: Scene5.Node
    var node6: Scene6.Node
    var node7: Scene7.Node
    var node8: Scene8.Node
    var node9: Scene9.Node
    var node10: Scene10.Node
    var node11: Scene11.Node
    var node12: Scene12.Node
    var node13: Scene13.Node
    var node14: Scene14.Node
    var node15: Scene15.Node
    var node16: Scene16.Node
    var node17: Scene17.Node
    var node18: Scene18.Node
    var node19: Scene19.Node

    public init<Backend: AppBackend>(
        from scene: NodeScene,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0 = Scene0.Node(from: scene.scene0, backend: backend, environment: environment)
        node1 = Scene1.Node(from: scene.scene1, backend: backend, environment: environment)
        node2 = Scene2.Node(from: scene.scene2, backend: backend, environment: environment)
        node3 = Scene3.Node(from: scene.scene3, backend: backend, environment: environment)
        node4 = Scene4.Node(from: scene.scene4, backend: backend, environment: environment)
        node5 = Scene5.Node(from: scene.scene5, backend: backend, environment: environment)
        node6 = Scene6.Node(from: scene.scene6, backend: backend, environment: environment)
        node7 = Scene7.Node(from: scene.scene7, backend: backend, environment: environment)
        node8 = Scene8.Node(from: scene.scene8, backend: backend, environment: environment)
        node9 = Scene9.Node(from: scene.scene9, backend: backend, environment: environment)
        node10 = Scene10.Node(from: scene.scene10, backend: backend, environment: environment)
        node11 = Scene11.Node(from: scene.scene11, backend: backend, environment: environment)
        node12 = Scene12.Node(from: scene.scene12, backend: backend, environment: environment)
        node13 = Scene13.Node(from: scene.scene13, backend: backend, environment: environment)
        node14 = Scene14.Node(from: scene.scene14, backend: backend, environment: environment)
        node15 = Scene15.Node(from: scene.scene15, backend: backend, environment: environment)
        node16 = Scene16.Node(from: scene.scene16, backend: backend, environment: environment)
        node17 = Scene17.Node(from: scene.scene17, backend: backend, environment: environment)
        node18 = Scene18.Node(from: scene.scene18, backend: backend, environment: environment)
        node19 = Scene19.Node(from: scene.scene19, backend: backend, environment: environment)
    }

    public func update<Backend: AppBackend>(
        _ newScene: NodeScene?,
        backend: Backend,
        environment: EnvironmentValues
    ) {
        node0.update(newScene?.scene0, backend: backend, environment: environment)
        node1.update(newScene?.scene1, backend: backend, environment: environment)
        node2.update(newScene?.scene2, backend: backend, environment: environment)
        node3.update(newScene?.scene3, backend: backend, environment: environment)
        node4.update(newScene?.scene4, backend: backend, environment: environment)
        node5.update(newScene?.scene5, backend: backend, environment: environment)
        node6.update(newScene?.scene6, backend: backend, environment: environment)
        node7.update(newScene?.scene7, backend: backend, environment: environment)
        node8.update(newScene?.scene8, backend: backend, environment: environment)
        node9.update(newScene?.scene9, backend: backend, environment: environment)
        node10.update(newScene?.scene10, backend: backend, environment: environment)
        node11.update(newScene?.scene11, backend: backend, environment: environment)
        node12.update(newScene?.scene12, backend: backend, environment: environment)
        node13.update(newScene?.scene13, backend: backend, environment: environment)
        node14.update(newScene?.scene14, backend: backend, environment: environment)
        node15.update(newScene?.scene15, backend: backend, environment: environment)
        node16.update(newScene?.scene16, backend: backend, environment: environment)
        node17.update(newScene?.scene17, backend: backend, environment: environment)
        node18.update(newScene?.scene18, backend: backend, environment: environment)
        node19.update(newScene?.scene19, backend: backend, environment: environment)
    }
}
