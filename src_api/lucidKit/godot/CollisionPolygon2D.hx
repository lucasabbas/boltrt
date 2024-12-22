package lucidkit.godot;

@:native("godot.CollisionPolygon2D")
extern class CollisionPolygon2D extends Node2D {
    public var build_mode: Int;
    public var disabled: Bool;
    public var one_way_collision: Bool;
    public var one_way_collision_margin: Float;
    public var polygon: PoolVector2Array;
}
