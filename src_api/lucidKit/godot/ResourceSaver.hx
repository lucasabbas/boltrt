package lucidKit.godot;

@:native("godot.ResourceSaver")
extern class ResourceSaver extends Object {
    public function get_recognized_extensions(type: Resource): PoolStringArray;
    public function save(path: String, resource: Resource, flags: Int): Int;
    @:native("__new")
    public function new();
}
