package bolt.godot;

class EditorInspectorPluginSignalNames {
}
@:native("godot.EditorInspectorPlugin")
extern class EditorInspectorPlugin extends Reference {
    public function addCustomControl(control: Control): Void;
    public function addPropertyEditor(property: String, editor: Control): Void;
    public function addPropertyEditorForMultipleProperties(label: String, properties: lua.Table[Int, String], editor: Control): Void;
    public function canHandle(object: Object): Bool;
    public function parseBegin(object: Object): Void;
    public function parseCategory(object: Object, category: String): Void;
    public function parseEnd(): Void;
    public function parseProperty(object: Object, type: Int, path: String, hint: Int, hintText: String, usage: Int): Bool;
    @:native("__new")
    public function new();
}
