package bolt.godot;

class KinematicCollision2DSignalNames {
}
@:native("godot.KinematicCollision2D")
extern class KinematicCollision2D extends Reference {
    public var collider: Object;
    public var colliderId: Int;
    public var colliderMetadata: Dynamic;
    public var colliderRid: RID;
    public var colliderShape: Object;
    public var colliderShapeIndex: Int;
    public var colliderVelocity: Vector2;
    public var localShape: Object;
    public var normal: Vector2;
    public var position: Vector2;
    public var remainder: Vector2;
    public var travel: Vector2;
    public function getAngle(upDirection: GdVector2): Float;
    @:native("__new")
    public function new();
}
