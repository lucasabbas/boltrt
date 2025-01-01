package bolt.godot;

class RigidBodyMode {
    public static var Rigid: Int = 0;
    public static var Static: Int = 1;
    public static var Character: Int = 2;
    public static var Kinematic: Int = 3;
}
class RigidBodyMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class RigidBodyPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class RigidBodyPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class RigidBodySignalNames {
    public static var bodyEntered: String = "body_entered";
    public static var bodyExited: String = "body_exited";
    public static var bodyShapeEntered: String = "body_shape_entered";
    public static var bodyShapeExited: String = "body_shape_exited";
    public static var sleepingStateChanged: String = "sleeping_state_changed";
}
@:native("godot.RigidBody")
extern class RigidBody extends PhysicsBody {
    public var angularDamp: Float;
    public var angularVelocity: Vector3;
    public var axisLockAngularX: Bool;
    public var axisLockAngularY: Bool;
    public var axisLockAngularZ: Bool;
    public var axisLockLinearX: Bool;
    public var axisLockLinearY: Bool;
    public var axisLockLinearZ: Bool;
    public var bounce: Float;
    public var canSleep: Bool;
    public var contactMonitor: Bool;
    public var contactsReported: Int;
    public var continuousCd: Bool;
    public var customIntegrator: Bool;
    public var friction: Float;
    public var gravityScale: Float;
    public var linearDamp: Float;
    public var linearVelocity: Vector3;
    public var mass: Float;
    public var mode: Int;
    public var physicsMaterialOverride: PhysicsMaterial;
    public var sleeping: Bool;
    public var weight: Float;
    public function IntegrateForces(state: PhysicsDirectBodyState): Void;
    public function addCentralForce(force: GdVector3): Void;
    public function addForce(force: GdVector3, position: GdVector3): Void;
    public function addTorque(torque: GdVector3): Void;
    public function applyCentralImpulse(impulse: GdVector3): Void;
    public function applyImpulse(position: GdVector3, impulse: GdVector3): Void;
    public function applyTorqueImpulse(impulse: GdVector3): Void;
    public function getAxisLock(axis: Int): Bool;
    public function getCollidingBodies(): Array<Dynamic>;
    public function getInverseInertiaTensor(): Basis;
    public function setAxisLock(axis: Int, lock: Bool): Void;
    public function setAxisVelocity(axisVelocity: GdVector3): Void;
    @:native("__new")
    public function new();
}
