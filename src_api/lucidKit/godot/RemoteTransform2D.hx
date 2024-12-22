package lucidKit.godot;

@:native("godot.RemoteTransform2D")
extern class RemoteTransform2D extends Node2D {
    public var remote_path: NodePath;
    public var update_position: Bool;
    public var update_rotation: Bool;
    public var update_scale: Bool;
    public var use_global_coordinates: Bool;
    public function force_update_cache(): Void;
    @:native("__new")
    public function new();
}
