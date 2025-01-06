package magicrt.godot;

class Physics2DTestMotionResultSignalNames {
}
@:native("godot.Physics2DTestMotionResult")
extern class Physics2DTestMotionResult extends Reference {
    public var collider: Object;
    public var colliderId: Int;
    public var colliderRid: RID;
    public var colliderShape: Int;
    public var colliderVelocity: Vector2;
    public var collisionDepth: Float;
    public var collisionNormal: Vector2;
    public var collisionPoint: Vector2;
    public var collisionSafeFraction: Float;
    public var collisionUnsafeFraction: Float;
    public var motion: Vector2;
    public var motionRemainder: Vector2;
    @:native("__new")
    public function new();
}
