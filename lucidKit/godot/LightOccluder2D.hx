package lucidKit.godot;

class LightOccluder2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class LightOccluder2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class LightOccluder2DSignalNames {
}
@:native("godot.LightOccluder2D")
extern class LightOccluder2D extends Node2D {
    public var occluder: OccluderPolygon2D;
    @:native("__new")
    public function new();
}
