package lucidKit.godot;

@:native("godot.ScrollBar")
extern class ScrollBar extends Range {
    public var custom_step: Float;
    public var size_flags_vertical: Int;
    public var step: Float;
    @:native("__new")
    public function new();
}
