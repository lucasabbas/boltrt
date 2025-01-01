package bolt.godot;

class InputEventActionSignalNames {
}
@:native("godot.InputEventAction")
extern class InputEventAction extends InputEvent {
    public var action: String;
    public var pressed: Bool;
    public var strength: Float;
    @:native("__new")
    public function new();
}
