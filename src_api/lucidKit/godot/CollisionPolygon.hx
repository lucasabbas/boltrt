package lucidkit.godot;

@:native("godot.CollisionPolygon")
extern class CollisionPolygon extends Spatial {
    public var depth: Float;
    public var disabled: Bool;
    public var margin: Float;
    public var polygon: PoolVector2Array;
}
