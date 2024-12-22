package lucidkit.godot;

@:native("godot.ResourceFormatSaver")
extern class ResourceFormatSaver extends Reference {
    public function get_recognized_extensions(resource: Resource): PoolStringArray;
    public function recognize(resource: Resource): Bool;
    public function save(path: String, resource: Resource, flags: Int): Int;
}
