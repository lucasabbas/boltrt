package lucidKit.godot;

@:native("godot.ShapeCast")
extern class ShapeCast extends Spatial {
    public var collideWithAreas: Bool;
    public var collideWithBodies: Bool;
    public var collisionMask: Int;
    public var collisionResult: Array<Dynamic>;
    public var debugShapeCustomColor: Color;
    public var enabled: Bool;
    public var excludeParent: Bool;
    public var margin: Float;
    public var maxResults: Int;
    public var shape: Shape;
    public var targetPosition: Vector3;
    public function addException(node: Object): Void;
    public function addExceptionRid(rid: RID): Void;
    public function clearExceptions(): Void;
    public function forceShapecastUpdate(): Void;
    public function getClosestCollisionSafeFraction(): Float;
    public function getClosestCollisionUnsafeFraction(): Float;
    public function getCollider(index: Int): Object;
    public function getColliderRid(index: Int): RID;
    public function getColliderShape(index: Int): Int;
    public function getCollisionCount(): Int;
    public function getCollisionMaskValue(layerNumber: Int): Bool;
    public function getCollisionNormal(index: Int): Vector3;
    public function getCollisionPoint(index: Int): Vector3;
    public function isColliding(): Bool;
    public function removeException(node: Object): Void;
    public function removeExceptionRid(rid: RID): Void;
    public function resourceChanged(resource: Resource): Void;
    public function setCollisionMaskValue(layerNumber: Int, value: Bool): Void;
    @:native("__new")
    public function new();
}
