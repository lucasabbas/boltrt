package lucidKit.godot;

@:native("godot.ProgressBar")
extern class ProgressBar extends Range {
    public var percent_visible: Bool;
    @:native("__new")
    public function new();
}
