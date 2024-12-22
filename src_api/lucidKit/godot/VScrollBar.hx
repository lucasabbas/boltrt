package lucidKit.godot;

@:native("godot.VScrollBar")
extern class VScrollBar extends ScrollBar {
    public var size_flags_horizontal: Int;
    public var size_flags_vertical: Int;
    @:native("__new")
    public function new();
}
