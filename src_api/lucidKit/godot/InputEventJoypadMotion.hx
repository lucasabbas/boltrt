package lucidKit.godot;

@:native("godot.InputEventJoypadMotion")
extern class InputEventJoypadMotion extends InputEvent {
    public var axis: Int;
    public var axisValue: Float;
    @:native("__new")
    public function new();
}
