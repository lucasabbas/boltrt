package lucidkit.godot;

@:native("godot.Resource")
extern class Resource extends Reference {
    public var resource_local_to_scene: Bool;
    public var resource_name: String;
    public var resource_path: String;
    public function _setup_local_to_scene(): Void;
    public function duplicate(subresources: Bool): Resource;
    public function emit_changed(): Void;
    public function get_local_scene(): Node;
    public function get_rid(): RID;
    public function setup_local_to_scene(): Void;
    public function take_over_path(path: String): Void;
}
