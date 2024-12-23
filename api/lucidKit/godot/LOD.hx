package lucidKit.godot;

@:native("godot.LOD")
extern class LOD extends Spatial {
    public var hysteresis: Float;
    public var lodPriority: Int;
    @:native("__new")
    public function new();
}
