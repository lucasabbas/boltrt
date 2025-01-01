package bolt.godot;

class Joint2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class Joint2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Joint2DSignalNames {
}
@:native("godot.Joint2D")
extern class Joint2D extends Node2D {
    public var bias: Float;
    public var disableCollision: Bool;
    public var nodeA: NodePath;
    public var nodeB: NodePath;
    @:native("__new")
    public function new();
}
