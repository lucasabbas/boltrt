package bolt.godot;

class Physics2DDirectBodyStateSignalNames {
}
@:native("godot.Physics2DDirectBodyState")
extern class Physics2DDirectBodyState extends Object {
    public var angularVelocity: Float;
    public var inverseInertia: Float;
    public var inverseMass: Float;
    public var linearVelocity: Vector2;
    public var sleeping: Bool;
    public var step: Float;
    public var totalAngularDamp: Float;
    public var totalGravity: Vector2;
    public var totalLinearDamp: Float;
    public var transform: Transform2D;
    public function addCentralForce(force: GdVector2): Void;
    public function addForce(offset: GdVector2, force: GdVector2): Void;
    public function addTorque(torque: Float): Void;
    public function applyCentralImpulse(impulse: GdVector2): Void;
    public function applyImpulse(offset: GdVector2, impulse: GdVector2): Void;
    public function applyTorqueImpulse(impulse: Float): Void;
    public function getContactCollider(contactIdx: Int): RID;
    public function getContactColliderId(contactIdx: Int): Int;
    public function getContactColliderObject(contactIdx: Int): Object;
    public function getContactColliderPosition(contactIdx: Int): Vector2;
    public function getContactColliderShape(contactIdx: Int): Int;
    public function getContactColliderShapeMetadata(contactIdx: Int): Variant;
    public function getContactColliderVelocityAtPosition(contactIdx: Int): Vector2;
    public function getContactCount(): Int;
    public function getContactLocalNormal(contactIdx: Int): Vector2;
    public function getContactLocalPosition(contactIdx: Int): Vector2;
    public function getContactLocalShape(contactIdx: Int): Int;
    public function getSpaceState(): Physics2DDirectSpaceState;
    public function getVelocityAtLocalPosition(localPosition: GdVector2): Vector2;
    public function integrateForces(): Void;
    @:native("__new")
    public function new();
}
