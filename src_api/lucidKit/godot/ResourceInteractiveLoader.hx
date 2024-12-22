package lucidkit.godot;

@:native("godot.ResourceInteractiveLoader")
extern class ResourceInteractiveLoader extends Reference {
    public var no_subresource_cache: Bool;
    public function get_resource(): Resource;
    public function get_stage(): Int;
    public function get_stage_count(): Int;
    public function poll(): Int;
    public function wait(): Int;
}
