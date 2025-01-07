package bolt.godot;

class ResourceFormatSaverSignalNames {
}
@:native("godot.ResourceFormatSaver")
extern class ResourceFormatSaver extends Reference {
    public function getRecognizedExtensions(resource: Resource): lua.Table<Int, String>;
    public function recognize(resource: Resource): Bool;
    public function save(path: String, resource: Resource, flags: Int): Int;
    @:native("__new")
    public function new();
}
