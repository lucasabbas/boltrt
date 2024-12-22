package lucidKit.godot;

@:native("godot.VSlider")
extern class VSlider extends Slider {
    public var size_flags_horizontal: Int;
    public var size_flags_vertical: Int;
    @:native("__new")
    public function new();
}
