package lucidKit.godot;

@:native("godot.ConfirmationDialog")
extern class ConfirmationDialog extends AcceptDialog {
    public function get_cancel(): Button;
    @:native("__new")
    public function new();
}
