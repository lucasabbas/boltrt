package lucidkit.godot;

@:native("godot.InputEventKey")
extern class InputEventKey extends InputEventWithModifiers {
    public var echo: Bool;
    public var physical_scancode: Int;
    public var pressed: Bool;
    public var scancode: Int;
    public var unicode: Int;
    public function get_physical_scancode_with_modifiers(): Int;
    public function get_scancode_with_modifiers(): Int;
}
