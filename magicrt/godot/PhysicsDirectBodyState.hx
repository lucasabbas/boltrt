package magicrt.godot;

class PhysicsDirectBodyStateSignalNames {
}
@:native("godot.PhysicsDirectBodyState")
extern class PhysicsDirectBodyState extends Object {
    public var angularVelocity: Vector3;
    public var centerOfMass: Vector3;
    public var inverseInertia: Vector3;
    public var inverseMass: Float;
    public var linearVelocity: Vector3;
    public var principalInertiaAxes: Basis;
    public var sleeping: Bool;
    public var step: Float;
    public var totalAngularDamp: Float;
    public var totalGravity: Vector3;
    public var totalLinearDamp: Float;
    public var transform: Transform;
    public function addCentralForce(force: GdVector3): Void;
    public function addForce(force: GdVector3, position: GdVector3): Void;
    public function addTorque(torque: GdVector3): Void;
    public function applyCentralImpulse(j: GdVector3): Void;
    public function applyImpulse(position: GdVector3, j: GdVector3): Void;
    public function applyTorqueImpulse(j: GdVector3): Void;
    public function getContactCollider(contactIdx: Int): RID;
    public function getContactColliderId(contactIdx: Int): Int;
    public function getContactColliderObject(contactIdx: Int): Object;
    public function getContactColliderPosition(contactIdx: Int): Vector3;
    public function getContactColliderShape(contactIdx: Int): Int;
    public function getContactColliderVelocityAtPosition(contactIdx: Int): Vector3;
    public function getContactCount(): Int;
    public function getContactImpulse(contactIdx: Int): Float;
    public function getContactLocalNormal(contactIdx: Int): Vector3;
    public function getContactLocalPosition(contactIdx: Int): Vector3;
    public function getContactLocalShape(contactIdx: Int): Int;
    public function getSpaceState(): PhysicsDirectSpaceState;
    public function getVelocityAtLocalPosition(localPosition: GdVector3): Vector3;
    public function integrateForces(): Void;
    @:native("__new")
    public function new();
}
