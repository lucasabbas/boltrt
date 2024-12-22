package lucidkit.godot;

@:native("godot.ResourcePreloader")
extern class ResourcePreloader extends Node {
    public function add_resource(name: String, resource: Resource): Void;
    public function get_resource(name: String): Resource;
    public function get_resource_list(): PoolStringArray;
    public function has_resource(name: String): Bool;
    public function remove_resource(name: String): Void;
    public function rename_resource(name: String, newname: String): Void;
}
