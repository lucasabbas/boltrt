package lucidKit.godot;

@:native("godot.ColorPickerButton")
extern class ColorPickerButton extends Button {
    public var color: Color;
    public var edit_alpha: Bool;
    public var toggle_mode: Bool;
    public function get_picker(): ColorPicker;
    public function get_popup(): PopupPanel;
    @:native("__new")
    public function new();
}
