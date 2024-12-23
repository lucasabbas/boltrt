package lucidKit.godot;

@:native("godot.ConfirmationDialog")
extern class ConfirmationDialog extends AcceptDialog {
    public function getCancel(): Button;
    @:native("__new")
    public function new();
}
