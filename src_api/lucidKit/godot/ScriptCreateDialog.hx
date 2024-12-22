package lucidkit.godot;

@:native("godot.ScriptCreateDialog")
extern class ScriptCreateDialog extends ConfirmationDialog {
    public var dialog_hide_on_ok: Bool;
    public var margin_bottom: Float;
    public var margin_right: Float;
    public var rect_size: Vector2;
    public var window_title: String;
    public function config(inherits: String, path: String, built_in_enabled: Bool, load_enabled: Bool): Void;
}
