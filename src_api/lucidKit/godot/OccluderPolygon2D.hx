package lucidKit.godot;

@:native("godot.OccluderPolygon2D")
extern class OccluderPolygon2D extends Resource {
    public var closed: Bool;
    public var cullMode: Int;
    public var polygon: PoolVector2Array;
    @:native("__new")
    public function new();
}
