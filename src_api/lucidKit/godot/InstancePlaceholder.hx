package lucidKit.godot;

@:native("godot.InstancePlaceholder")
extern class InstancePlaceholder extends Node {
    public function create_instance(replace: Bool, custom_scene: PackedScene): Node;
    public function get_instance_path(): String;
    public function get_stored_values(with_order: Bool): Map<Dynamic, Dynamic>;
    public function replace_by_instance(custom_scene: PackedScene): Void;
    @:native("__new")
    public function new();
}
