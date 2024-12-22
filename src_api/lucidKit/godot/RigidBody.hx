package lucidKit.godot;

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
