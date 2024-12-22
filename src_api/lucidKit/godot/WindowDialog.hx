package lucidKit.godot;

@:native("godot.WindowDialog")
extern class WindowDialog extends Popup {
    public var resizable: Bool;
    public var window_title: String;
    public function get_close_button(): TextureButton;
    @:native("__new")
    public function new();
}
