package lucidkit.godot;

@:native("godot.InputEventScreenDrag")
extern class InputEventScreenDrag extends InputEvent {
    public var index: Int;
    public var position: Vector2;
    public var relative: Vector2;
    public var speed: Vector2;
}
