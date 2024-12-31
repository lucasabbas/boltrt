package lucidKit.godot;

class InputEventMIDISignalNames {
}
@:native("godot.InputEventMIDI")
extern class InputEventMIDI extends InputEvent {
    public var channel: Int;
    public var controllerNumber: Int;
    public var controllerValue: Int;
    public var instrument: Int;
    public var message: Int;
    public var pitch: Int;
    public var pressure: Int;
    public var velocity: Int;
    @:native("__new")
    public function new();
}
