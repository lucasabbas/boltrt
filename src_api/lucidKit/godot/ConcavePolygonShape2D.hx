package lucidkit.godot;

@:native("godot.ConcavePolygonShape2D")
extern class ConcavePolygonShape2D extends Shape2D {
    public var segments: PoolVector2Array;
}
