package magicrt.godot;

class EditorSelectionSignalNames {
    public static var selectionChanged: String = "selection_changed";
}
@:native("godot.EditorSelection")
extern class EditorSelection extends Object {
    public function addNode(node: Node): Void;
    public function clear(): Void;
    public function getSelectedNodes(): Array<Dynamic>;
    public function getTransformableSelectedNodes(): Array<Dynamic>;
    public function removeNode(node: Node): Void;
    @:native("__new")
    public function new();
}
