package lucidKit.godot;

@:native("godot.ColorPicker")
extern class ColorPicker extends BoxContainer {
    public var color: Color;
    public var deferredMode: Bool;
    public var editAlpha: Bool;
    public var hsvMode: Bool;
    public var presetsEnabled: Bool;
    public var presetsVisible: Bool;
    public var rawMode: Bool;
    public function addPreset(color: Color): Void;
    public function erasePreset(color: Color): Void;
    public function getPresets(): PoolColorArray;
    @:native("__new")
    public function new();
}
