package lucidkit.godot;

@:native("godot.InputEventMouse")
extern class InputEventMouse extends InputEventWithModifiers {
    public var button_mask: Int;
    public var global_position: Vector2;
    public var position: Vector2;
}
