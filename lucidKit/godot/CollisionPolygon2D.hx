package lucidKit.godot;

class CollisionPolygon2DBuildMode {
    public static var Solids: Int = 0;
    public static var Segments: Int = 1;
}
class CollisionPolygon2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class CollisionPolygon2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class CollisionPolygon2DSignalNames {
}
@:native("godot.CollisionPolygon2D")
extern class CollisionPolygon2D extends Node2D {
    public var buildMode: Int;
    public var disabled: Bool;
    public var oneWayCollision: Bool;
    public var oneWayCollisionMargin: Float;
    public var polygon: PoolVector2Array;
    @:native("__new")
    public function new();
}
