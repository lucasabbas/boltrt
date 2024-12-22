package lucidKit.godot;

@:native("godot.ProgressBar")
extern class ProgressBar extends Range {
    public var percentVisible: Bool;
    @:native("__new")
    public function new();
}
