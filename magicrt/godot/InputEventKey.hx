package magicrt.godot;

class InputEventKeySignalNames {
}
@:native("godot.InputEventKey")
extern class InputEventKey extends InputEventWithModifiers {
    public var echo: Bool;
    public var physicalScancode: Int;
    public var pressed: Bool;
    public var scancode: Int;
    public var unicode: Int;
    public function getPhysicalScancodeWithModifiers(): Int;
    public function getScancodeWithModifiers(): Int;
    @:native("__new")
    public function new();
}
