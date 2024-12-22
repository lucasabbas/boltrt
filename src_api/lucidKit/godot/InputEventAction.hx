package lucidkit.godot;

@:native("godot.InputEventAction")
extern class InputEventAction extends InputEvent {
    public var action: String;
    public var pressed: Bool;
    public var strength: Float;
}
