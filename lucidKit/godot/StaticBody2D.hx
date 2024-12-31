package lucidKit.godot;

class StaticBody2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class StaticBody2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class StaticBody2DSignalNames {
}
@:native("godot.StaticBody2D")
extern class StaticBody2D extends PhysicsBody2D {
    public var bounce: Float;
    public var constantAngularVelocity: Float;
    public var constantLinearVelocity: Vector2;
    public var friction: Float;
    public var physicsMaterialOverride: PhysicsMaterial;
    @:native("__new")
    public function new();
}
