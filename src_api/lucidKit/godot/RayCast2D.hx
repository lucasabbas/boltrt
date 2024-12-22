package lucidKit.godot;

@:native("godot.RayCast2D")
extern class RayCast2D extends Node2D {
    public var castTo: Vector2;
    public var collideWithAreas: Bool;
    public var collideWithBodies: Bool;
    public var collisionMask: Int;
    public var enabled: Bool;
    public var excludeParent: Bool;
    public function addException(node: Object): Void;
    public function addExceptionRid(rid: RID): Void;
    public function clearExceptions(): Void;
    public function forceRaycastUpdate(): Void;
    public function getCollider(): Object;
    public function getColliderShape(): Int;
    public function getCollisionMaskBit(bit: Int): Bool;
    public function getCollisionNormal(): Vector2;
    public function getCollisionPoint(): Vector2;
    public function isColliding(): Bool;
    public function removeException(node: Object): Void;
    public function removeExceptionRid(rid: RID): Void;
    public function setCollisionMaskBit(bit: Int, value: Bool): Void;
    @:native("__new")
    public function new();
}
