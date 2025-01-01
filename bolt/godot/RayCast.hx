package bolt.godot;

class RayCastMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class RayCastPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class RayCastPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class RayCastSignalNames {
}
@:native("godot.RayCast")
extern class RayCast extends Spatial {
    public var castTo: Vector3;
    public var collideWithAreas: Bool;
    public var collideWithBodies: Bool;
    public var collisionMask: Int;
    public var debugShapeCustomColor: Color;
    public var debugShapeThickness: Int;
    public var enabled: Bool;
    public var excludeParent: Bool;
    public function addException(node: Object): Void;
    public function addExceptionRid(rid: RID): Void;
    public function clearExceptions(): Void;
    public function forceRaycastUpdate(): Void;
    public function getCollider(): Object;
    public function getColliderShape(): Int;
    public function getCollisionMaskBit(bit: Int): Bool;
    public function getCollisionNormal(): Vector3;
    public function getCollisionPoint(): Vector3;
    public function isColliding(): Bool;
    public function removeException(node: Object): Void;
    public function removeExceptionRid(rid: RID): Void;
    public function setCollisionMaskBit(bit: Int, value: Bool): Void;
    @:native("__new")
    public function new();
}
