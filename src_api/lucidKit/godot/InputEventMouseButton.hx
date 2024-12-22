package lucidKit.godot;

@:native("godot.InputEventMouseButton")
extern class InputEventMouseButton extends InputEventMouse {
    public var button_index: Int;
    public var canceled: Bool;
    public var doubleclick: Bool;
    public var factor: Float;
    public var pressed: Bool;
    @:native("__new")
    public function new();
}
