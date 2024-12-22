package lucidKit.godot;

@:native("godot.ProgressBar")
extern class ProgressBar extends Range {
    public var percent_visible: Bool;
    public var size_flags_vertical: Int;
    public var step: Float;
    @:native("__new")
    public function new();
}
