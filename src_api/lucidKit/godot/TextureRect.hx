package lucidkit.godot;

@:native("godot.TextureRect")
extern class TextureRect extends Control {
    public var expand: Bool;
    public var flip_h: Bool;
    public var flip_v: Bool;
    public var mouse_filter: Int;
    public var stretch_mode: Int;
    public var texture: Texture;
}
