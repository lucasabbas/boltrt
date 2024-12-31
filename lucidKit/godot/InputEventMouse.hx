package lucidKit.godot;

class InputEventMouseSignalNames {
}
@:native("godot.InputEventMouse")
extern class InputEventMouse extends InputEventWithModifiers {
    public var buttonMask: Int;
    public var globalPosition: Vector2;
    public var position: Vector2;
    @:native("__new")
    public function new();
}
