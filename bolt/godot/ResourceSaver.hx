package bolt.godot;

class ResourceSaverSignalNames {
}
@:native("godot.ResourceSaver")
extern class ResourceSaver extends Object {
    public function getRecognizedExtensions(type: Resource): PoolStringArray;
    public function save(path: String, resource: Resource, flags: Int = 0): Int;
    @:native("__new")
    public function new();
}
