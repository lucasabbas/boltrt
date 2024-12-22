package lucidKit.godot;

@:native("godot.InputEventPanGesture")
extern class InputEventPanGesture extends InputEventGesture {
    public var delta: Vector2;
    @:native("__new")
    public function new();
}
