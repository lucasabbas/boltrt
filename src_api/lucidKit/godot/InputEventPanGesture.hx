package lucidkit.godot;

@:native("godot.InputEventPanGesture")
extern class InputEventPanGesture extends InputEventGesture {
    public var delta: Vector2;
}
