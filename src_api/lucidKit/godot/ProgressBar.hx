package lucidkit.godot;

@:native("godot.ProgressBar")
extern class ProgressBar extends Range {
    public var percent_visible: Bool;
    public var size_flags_vertical: Int;
    public var step: Float;
}
