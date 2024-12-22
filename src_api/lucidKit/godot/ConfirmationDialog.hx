package lucidKit.godot;

@:native("godot.ConfirmationDialog")
extern class ConfirmationDialog extends AcceptDialog {
    public var rect_min_size: Vector2;
    public var window_title: String;
    public function get_cancel(): Button;
    @:native("__new")
    public function new();
}
