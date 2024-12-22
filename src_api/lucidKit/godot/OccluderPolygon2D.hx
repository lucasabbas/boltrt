package lucidkit.godot;

@:native("godot.OccluderPolygon2D")
extern class OccluderPolygon2D extends Resource {
    public var closed: Bool;
    public var cull_mode: Int;
    public var polygon: PoolVector2Array;
}
