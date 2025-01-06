package magicrt.godot;

class InputEventMouseMotionSignalNames {
}
@:native("godot.InputEventMouseMotion")
extern class InputEventMouseMotion extends InputEventMouse {
    public var penInverted: Bool;
    public var pressure: Float;
    public var relative: Vector2;
    public var speed: Vector2;
    public var tilt: Vector2;
    @:native("__new")
    public function new();
}
