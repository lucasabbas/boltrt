package lucidKit.godot;

@:native("godot.LineEdit")
extern class LineEdit extends Control {
    public var align: Int;
    public var caret_blink: Bool;
    public var caret_blink_speed: Float;
    public var caret_position: Int;
    public var clear_button_enabled: Bool;
    public var context_menu_enabled: Bool;
    public var deselect_on_focus_loss_enabled: Bool;
    public var editable: Bool;
    public var expand_to_text_length: Bool;
    public var max_length: Int;
    public var middle_mouse_paste_enabled: Bool;
    public var placeholder_alpha: Float;
    public var placeholder_text: String;
    public var right_icon: Texture;
    public var secret: Bool;
    public var secret_character: String;
    public var selecting_enabled: Bool;
    public var shortcut_keys_enabled: Bool;
    public var text: String;
    public var virtual_keyboard_enabled: Bool;
    public var virtual_keyboard_type: Int;
    public function append_at_cursor(text: String): Void;
    public function clear(): Void;
    public function delete_char_at_cursor(): Void;
    public function delete_text(from_column: Int, to_column: Int): Void;
    public function deselect(): Void;
    public function get_menu(): PopupMenu;
    public function get_scroll_offset(): Int;
    public function get_selection_from_column(): Int;
    public function get_selection_to_column(): Int;
    public function has_selection(): Bool;
    public function menu_option(option: Int): Void;
    public function select(from: Int, to: Int): Void;
    public function select_all(): Void;
    @:native("__new")
    public function new();
}
