package lucidKit.godot;

@:native("godot.WindowDialog")
extern class WindowDialog extends Popup {
    public var resizable: Bool;
    public var windowTitle: String;
    public function getCloseButton(): TextureButton;
    @:native("__new")
    public function new();
}
