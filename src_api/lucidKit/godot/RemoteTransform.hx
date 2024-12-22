package lucidKit.godot;

@:native("godot.RemoteTransform")
extern class RemoteTransform extends Spatial {
    public var remote_path: NodePath;
    public var update_position: Bool;
    public var update_rotation: Bool;
    public var update_scale: Bool;
    public var use_global_coordinates: Bool;
    public function force_update_cache(): Void;
    @:native("__new")
    public function new();
}
