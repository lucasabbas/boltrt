package lucidKit.godot;

@:native("godot.EditorProperty")
extern class EditorProperty extends Container {
    public var checkable: Bool;
    public var checked: Bool;
    public var draw_red: Bool;
    public var keying: Bool;
    public var label: String;
    public var read_only: Bool;
    public function add_focusable(control: Control): Void;
    public function emit_changed(property: String, value: Variant, field: String, changing: Bool): Void;
    public function get_edited_object(): Object;
    public function get_edited_property(): String;
    public function set_bottom_editor(editor: Control): Void;
    public function update_property(): Void;
    @:native("__new")
    public function new();
}
