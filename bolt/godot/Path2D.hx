package bolt.godot;

class Path2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class Path2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Path2DSignalNames {
}
@:native("godot.Path2D")
extern class Path2D extends Node2D {
    public var curve: Curve2D;
    @:native("__new")
    public function new();
}
