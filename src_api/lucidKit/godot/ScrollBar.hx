package lucidKit.godot;

@:native("godot.ScrollBar")
extern class ScrollBar extends Range {
    public var custom_step: Float;
    @:native("__new")
    public function new();
}
