package lucidkit.godot;

@:native("godot.LOD")
extern class LOD extends Spatial {
    public var hysteresis: Float;
    public var lod_priority: Int;
}
