package lucidKit.godot;

@:native("godot.Occluder")
extern class Occluder extends Spatial {
    public var shape: OccluderShape;
    public function resource_changed(resource: Resource): Void;
    @:native("__new")
    public function new();
}
