package lucidkit.godot;

@:native("godot.ReferenceRect")
extern class ReferenceRect extends Control {
    public var border_color: Color;
    public var border_width: Float;
    public var editor_only: Bool;
}
