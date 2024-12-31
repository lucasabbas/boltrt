package lucidKit.godot;

class ShapeCast2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ShapeCast2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ShapeCast2DSignalNames {
}
@:native("godot.ShapeCast2D")
extern class ShapeCast2D extends Node2D {
    public var collideWithAreas: Bool;
    public var collideWithBodies: Bool;
    public var collisionMask: Int;
    public var collisionResult: Array<Dynamic>;
    public var enabled: Bool;
    public var excludeParent: Bool;
    public var margin: Float;
    public var maxResults: Int;
    public var shape: Shape2D;
    public var targetPosition: Vector2;
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
    public function getCollisionNormal(index: Int): Vector2;
    public function getCollisionPoint(index: Int): Vector2;
    public function isColliding(): Bool;
    public function removeException(node: Object): Void;
    public function removeExceptionRid(rid: RID): Void;
    public function setCollisionMaskValue(layerNumber: Int, value: Bool): Void;
    @:native("__new")
    public function new();
}
