package lucidKit.godot;

@:native("godot.EditorScenePostImport")
extern class EditorScenePostImport extends Reference {
    public function get_source_file(): String;
    public function get_source_folder(): String;
    public function post_import(scene: Object): Object;
    @:native("__new")
    public function new();
}
