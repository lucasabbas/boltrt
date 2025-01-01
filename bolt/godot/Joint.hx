package bolt.godot;

class JointMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class JointPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class JointPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class JointSignalNames {
}
@:native("godot.Joint")
extern class Joint extends Spatial {
    public var collisionExcludeNodes: Bool;
    public var nodesNodeA: NodePath;
    public var nodesNodeB: NodePath;
    public var solverPriority: Int;
    @:native("__new")
    public function new();
}
