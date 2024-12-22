package lucidkit.godot;

@:native("godot.LightOccluder2D")
extern class LightOccluder2D extends Node2D {
    public var light_mask: Int;
    public var occluder: OccluderPolygon2D;
}
