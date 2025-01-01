package bolt.godot;

class EditorScriptSignalNames {
}
@:native("godot.EditorScript")
extern class EditorScript extends Reference {
    public function Run(): Void;
    public function addRootNode(node: Node): Void;
    public function getEditorInterface(): EditorInterface;
    public function getScene(): Node;
    @:native("__new")
    public function new();
}
