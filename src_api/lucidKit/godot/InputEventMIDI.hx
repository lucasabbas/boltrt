package lucidkit.godot;

@:native("godot.InputEventMIDI")
extern class InputEventMIDI extends InputEvent {
    public var channel: Int;
    public var controller_number: Int;
    public var controller_value: Int;
    public var instrument: Int;
    public var message: Int;
    public var pitch: Int;
    public var pressure: Int;
    public var velocity: Int;
}
