package bolt.godot;

class EditorSceneImporterSignalNames {
}
@:native("godot.EditorSceneImporter")
extern class EditorSceneImporter extends Reference {
    public function GetExtensions(): Array<Dynamic>;
    public function GetImportFlags(): Int;
    public function ImportAnimation(path: String, flags: Int, bakeFps: Int): Animation;
    public function ImportScene(path: String, flags: Int, bakeFps: Int): Node;
    public function importAnimationFromOtherImporter(path: String, flags: Int, bakeFps: Int): Animation;
    public function importSceneFromOtherImporter(path: String, flags: Int, bakeFps: Int, compressFlags: Int): Node;
    @:native("__new")
    public function new();
}
