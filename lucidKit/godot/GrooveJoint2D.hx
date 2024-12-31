package lucidKit.godot;

class GrooveJoint2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class GrooveJoint2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class GrooveJoint2DSignalNames {
}
@:native("godot.GrooveJoint2D")
extern class GrooveJoint2D extends Joint2D {
    public var initialOffset: Float;
    public var length: Float;
    @:native("__new")
    public function new();
}
