package magicrt.godot;

class Position2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class Position2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Position2DSignalNames {
}
@:native("godot.Position2D")
extern class Position2D extends Node2D {
    @:native("__new")
    public function new();
}
