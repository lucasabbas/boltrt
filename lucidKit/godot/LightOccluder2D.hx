package lucidKit.godot;

@:native("godot.LightOccluder2D")
extern class LightOccluder2D extends Node2D {
    public var occluder: OccluderPolygon2D;
    @:native("__new")
    public function new();
}
