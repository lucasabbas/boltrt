package lucidKit.godot;

class EditorSpinSliderSignalNames {
}
@:native("godot.EditorSpinSlider")
extern class EditorSpinSlider extends Range {
    public var flat: Bool;
    public var hideSlider: Bool;
    public var label: String;
    public var readOnly: Bool;
    @:native("__new")
    public function new();
}
