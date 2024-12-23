package lucidKit.godot;

@:native("godot.InputEventGesture")
extern class InputEventGesture extends InputEventWithModifiers {
    public var position: Vector2;
    @:native("__new")
    public function new();
}
