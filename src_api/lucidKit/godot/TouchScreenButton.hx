package lucidKit.godot;

@:native("godot.TouchScreenButton")
extern class TouchScreenButton extends Node2D {
    public var action: String;
    public var bitmask: BitMap;
    public var normal: Texture;
    public var passby_press: Bool;
    public var pressed: Texture;
    public var shape: Shape2D;
    public var shape_centered: Bool;
    public var shape_visible: Bool;
    public var visibility_mode: Int;
    public function is_pressed(): Bool;
    @:native("__new")
    public function new();
}
