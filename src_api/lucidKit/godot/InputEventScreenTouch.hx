package lucidkit.godot;

@:native("godot.InputEventScreenTouch")
extern class InputEventScreenTouch extends InputEvent {
    public var canceled: Bool;
    public var double_tap: Bool;
    public var index: Int;
    public var position: Vector2;
    public var pressed: Bool;
}
