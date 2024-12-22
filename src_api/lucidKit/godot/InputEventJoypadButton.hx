package lucidKit.godot;

@:native("godot.InputEventJoypadButton")
extern class InputEventJoypadButton extends InputEvent {
    public var button_index: Int;
    public var pressed: Bool;
    public var pressure: Float;
    @:native("__new")
    public function new();
}
