package magicrt.godot;

class PinJoint2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class PinJoint2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class PinJoint2DSignalNames {
}
@:native("godot.PinJoint2D")
extern class PinJoint2D extends Joint2D {
    public var softness: Float;
    @:native("__new")
    public function new();
}
