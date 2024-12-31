package lucidKit.godot;

class DampedSpringJoint2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class DampedSpringJoint2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class DampedSpringJoint2DSignalNames {
}
@:native("godot.DampedSpringJoint2D")
extern class DampedSpringJoint2D extends Joint2D {
    public var damping: Float;
    public var length: Float;
    public var restLength: Float;
    public var stiffness: Float;
    @:native("__new")
    public function new();
}
