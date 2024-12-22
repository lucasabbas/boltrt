package lucidKit.godot;

@:native("godot.ARVROrigin")
extern class ARVROrigin extends Spatial {
    public var world_scale: Float;
    @:native("__new")
    public function new();
}
