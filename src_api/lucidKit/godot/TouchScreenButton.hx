package lucidKit.godot;

@:native("godot.TouchScreenButton")
extern class TouchScreenButton extends Node2D {
    public var action: String;
    public var bitmask: BitMap;
    public var normal: Texture;
    public var passbyPress: Bool;
    public var pressed: Texture;
    public var shape: Shape2D;
    public var shapeCentered: Bool;
    public var shapeVisible: Bool;
    public var visibilityMode: Int;
    public function isPressed(): Bool;
    @:native("__new")
    public function new();
}
