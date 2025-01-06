package magicrt.godot;

class EditorScenePostImportSignalNames {
}
@:native("godot.EditorScenePostImport")
extern class EditorScenePostImport extends Reference {
    public function getSourceFile(): String;
    public function getSourceFolder(): String;
    public function postImport(scene: Object): Object;
    @:native("__new")
    public function new();
}
