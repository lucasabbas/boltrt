package lucidkit.godot;

@:native("godot.EditorSpinSlider")
extern class EditorSpinSlider extends Range {
    public var flat: Bool;
    public var focus_mode: Int;
    public var hide_slider: Bool;
    public var label: String;
    public var read_only: Bool;
}
