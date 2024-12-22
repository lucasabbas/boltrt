package lucidKit.godot;

@:native("godot.ColorRect")
extern class ColorRect extends Control {
    public var color: Color;
    @:native("__new")
    public function new();
}
