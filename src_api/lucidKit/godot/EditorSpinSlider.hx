package lucidKit.godot;

@:native("godot.EditorSpinSlider")
extern class EditorSpinSlider extends Range {
    public var flat: Bool;
    public var hide_slider: Bool;
    public var label: String;
    public var read_only: Bool;
    @:native("__new")
    public function new();
}
