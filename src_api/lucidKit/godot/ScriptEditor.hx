package lucidkit.godot;

@:native("godot.ScriptEditor")
extern class ScriptEditor extends PanelContainer {
    public function can_drop_data_fw(point: GdVector2, data: Variant, from: Control): Bool;
    public function drop_data_fw(point: GdVector2, data: Variant, from: Control): Void;
    public function get_base_editor(): Control;
    public function get_current_script(): Script;
    public function get_drag_data_fw(point: GdVector2, from: Control): Variant;
    public function get_open_scripts(): Array<Dynamic>;
    public function goto_line(line_number: Int): Void;
    public function open_script_create_dialog(base_name: String, base_path: String): Void;
    public function reload_scripts(): Void;
}
