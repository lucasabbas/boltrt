package magicrt.godot;

class PhysicsTestMotionResultSignalNames {
}
@:native("godot.PhysicsTestMotionResult")
extern class PhysicsTestMotionResult extends Reference {
    public var collider: Object;
    public var colliderId: Int;
    public var colliderRid: RID;
    public var colliderShape: Int;
    public var colliderVelocity: Vector3;
    public var collisionDepth: Float;
    public var collisionNormal: Vector3;
    public var collisionPoint: Vector3;
    public var collisionSafeFraction: Float;
    public var collisionUnsafeFraction: Float;
    public var motion: Vector3;
    public var motionRemainder: Vector3;
    @:native("__new")
    public function new();
}
