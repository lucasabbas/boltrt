package lucidKit.godot;

@:native("godot.ColorPickerButton")
extern class ColorPickerButton extends Button {
    public var color: Color;
    public var editAlpha: Bool;
    public function getPicker(): ColorPicker;
    public function getPopup(): PopupPanel;
    @:native("__new")
    public function new();
}
