package lucidKit.godot;

@:native("godot.InputEventMouseMotion")
extern class InputEventMouseMotion extends InputEventMouse {
    public var pen_inverted: Bool;
    public var pressure: Float;
    public var relative: Vector2;
    public var speed: Vector2;
    public var tilt: Vector2;
    @:native("__new")
    public function new();
}
