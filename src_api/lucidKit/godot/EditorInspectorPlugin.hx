package lucidKit.godot;

@:native("godot.EditorInspectorPlugin")
extern class EditorInspectorPlugin extends Reference {
    public function add_custom_control(control: Control): Void;
    public function add_property_editor(property: String, editor: Control): Void;
    public function add_property_editor_for_multiple_properties(label: String, properties: PoolStringArray, editor: Control): Void;
    public function can_handle(object: Object): Bool;
    public function parse_begin(object: Object): Void;
    public function parse_category(object: Object, category: String): Void;
    public function parse_end(): Void;
    public function parse_property(object: Object, type: Int, path: String, hint: Int, hint_text: String, usage: Int): Bool;
    @:native("__new")
    public function new();
}
