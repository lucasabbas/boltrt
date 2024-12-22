package lucidKit.godot;

@:native("godot.InputEventMagnifyGesture")
extern class InputEventMagnifyGesture extends InputEventGesture {
    public var factor: Float;
    @:native("__new")
    public function new();
}
