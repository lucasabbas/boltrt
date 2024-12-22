package lucidKit.godot;

@:native("godot.EditorResourcePicker")
extern class EditorResourcePicker extends HBoxContainer {
    public var base_type: String;
    public var editable: Bool;
    public var edited_resource: Resource;
    public var toggle_mode: Bool;
    public function can_drop_data_fw(position: GdVector2, data: Variant, from: Control): Bool;
    public function drop_data_fw(position: GdVector2, data: Variant, from: Control): Void;
    public function get_allowed_types(): PoolStringArray;
    public function get_drag_data_fw(position: GdVector2, from: Control): Variant;
    public function handle_menu_selected(id: Int): Bool;
    public function set_create_options(menu_node: Object): Void;
    public function set_toggle_pressed(pressed: Bool): Void;
    @:native("__new")
    public function new();
}
