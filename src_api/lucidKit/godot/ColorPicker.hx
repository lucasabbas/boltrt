package lucidKit.godot;

@:native("godot.ColorPicker")
extern class ColorPicker extends BoxContainer {
    public var color: Color;
    public var deferred_mode: Bool;
    public var edit_alpha: Bool;
    public var hsv_mode: Bool;
    public var presets_enabled: Bool;
    public var presets_visible: Bool;
    public var raw_mode: Bool;
    public function add_preset(color: Color): Void;
    public function erase_preset(color: Color): Void;
    public function get_presets(): PoolColorArray;
    @:native("__new")
    public function new();
}
