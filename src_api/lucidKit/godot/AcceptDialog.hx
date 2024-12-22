package lucidKit.godot;

@:native("godot.AcceptDialog")
extern class AcceptDialog extends WindowDialog {
    public var dialog_autowrap: Bool;
    public var dialog_hide_on_ok: Bool;
    public var dialog_text: String;
    public var window_title: String;
    public function add_button(text: String, right: Bool, action: String): Button;
    public function add_cancel(name: String): Button;
    public function get_label(): Label;
    public function get_ok(): Button;
    public function register_text_enter(line_edit: Node): Void;
    public function remove_button(button: Control): Void;
    @:native("__new")
    public function new();
}
