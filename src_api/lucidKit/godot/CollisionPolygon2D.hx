package lucidKit.godot;

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
