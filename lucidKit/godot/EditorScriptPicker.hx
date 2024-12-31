package lucidKit.godot;

class EditorScriptPickerSignalNames {
}
@:native("godot.EditorScriptPicker")
extern class EditorScriptPicker extends EditorResourcePicker {
    public var scriptOwner: Node;
    @:native("__new")
    public function new();
}
