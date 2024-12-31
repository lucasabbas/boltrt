package lucidKit.godot;

class PathFollow2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class PathFollow2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class PathFollow2DSignalNames {
}
@:native("godot.PathFollow2D")
extern class PathFollow2D extends Node2D {
    public var cubicInterp: Bool;
    public var hOffset: Float;
    public var lookahead: Float;
    public var loop: Bool;
    public var offset: Float;
    public var rotate: Bool;
    public var unitOffset: Float;
    public var vOffset: Float;
    @:native("__new")
    public function new();
}
