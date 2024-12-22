package lucidKit.godot;

@:native("godot.EditorScriptPicker")
extern class EditorScriptPicker extends EditorResourcePicker {
    public var script_owner: Node;
    @:native("__new")
    public function new();
}
