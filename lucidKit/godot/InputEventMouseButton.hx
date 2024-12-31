package lucidKit.godot;

class InputEventMouseButtonSignalNames {
}
@:native("godot.InputEventMouseButton")
extern class InputEventMouseButton extends InputEventMouse {
    public var buttonIndex: Int;
    public var canceled: Bool;
    public var doubleclick: Bool;
    public var factor: Float;
    public var pressed: Bool;
    @:native("__new")
    public function new();
}
