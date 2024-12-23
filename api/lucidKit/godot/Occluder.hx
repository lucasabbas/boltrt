package lucidKit.godot;

@:native("godot.Occluder")
extern class Occluder extends Spatial {
    public var shape: OccluderShape;
    public function resourceChanged(resource: Resource): Void;
    @:native("__new")
    public function new();
}
