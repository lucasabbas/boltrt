package magicrt.godot;

class KinematicCollisionSignalNames {
}
@:native("godot.KinematicCollision")
extern class KinematicCollision extends Reference {
    public var collider: Object;
    public var colliderId: Int;
    public var colliderMetadata: Dynamic;
    public var colliderRid: RID;
    public var colliderShape: Object;
    public var colliderShapeIndex: Int;
    public var colliderVelocity: Vector3;
    public var localShape: Object;
    public var normal: Vector3;
    public var position: Vector3;
    public var remainder: Vector3;
    public var travel: Vector3;
    public function getAngle(upDirection: GdVector3): Float;
    @:native("__new")
    public function new();
}
