package lucidkit.godot;

@:native("godot.EditorScriptPicker")
extern class EditorScriptPicker extends EditorResourcePicker {
    public var script_owner: Node;
}
