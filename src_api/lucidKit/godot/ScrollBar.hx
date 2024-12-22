package lucidKit.godot;

@:native("godot.ScrollBar")
extern class ScrollBar extends Range {
    public var customStep: Float;
    @:native("__new")
    public function new();
}
