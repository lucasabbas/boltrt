package lucidKit.godot;

class RigidBody2DMode {
    public static var Rigid: Int = 0;
    public static var Static: Int = 1;
    public static var Character: Int = 2;
    public static var Kinematic: Int = 3;
}
class RigidBody2DContinuousCd {
    public static var Disabled: Int = 0;
    public static var CastRay: Int = 1;
    public static var CastShape: Int = 2;
}
class RigidBody2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class RigidBody2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class RigidBody2DSignalNames {
    public static var bodyEntered: String = "body_entered";
    public static var bodyExited: String = "body_exited";
    public static var bodyShapeEntered: String = "body_shape_entered";
    public static var bodyShapeExited: String = "body_shape_exited";
    public static var sleepingStateChanged: String = "sleeping_state_changed";
}
@:native("godot.RigidBody2D")
extern class RigidBody2D extends PhysicsBody2D {
    public var angularDamp: Float;
    public var angularVelocity: Float;
    public var appliedForce: Vector2;
    public var appliedTorque: Float;
    public var bounce: Float;
    public var canSleep: Bool;
    public var contactMonitor: Bool;
    public var contactsReported: Int;
    public var continuousCd: Int;
    public var customIntegrator: Bool;
    public var friction: Float;
    public var gravityScale: Float;
    public var inertia: Float;
    public var linearDamp: Float;
    public var linearVelocity: Vector2;
    public var mass: Float;
    public var mode: Int;
    public var physicsMaterialOverride: PhysicsMaterial;
    public var sleeping: Bool;
    public var weight: Float;
    public function IntegrateForces(state: Physics2DDirectBodyState): Void;
    public function addCentralForce(force: GdVector2): Void;
    public function addForce(offset: GdVector2, force: GdVector2): Void;
    public function addTorque(torque: Float): Void;
    public function applyCentralImpulse(impulse: GdVector2): Void;
    public function applyImpulse(offset: GdVector2, impulse: GdVector2): Void;
    public function applyTorqueImpulse(torque: Float): Void;
    public function getCollidingBodies(): Array<Dynamic>;
    public function setAxisVelocity(axisVelocity: GdVector2): Void;
    public function testMotion(motion: GdVector2, infiniteInertia: Bool = true, margin: Float = 0.08, result: Physics2DTestMotionResult): Bool;
    @:native("__new")
    public function new();
}
