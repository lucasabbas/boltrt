package lucidKit.godot;

@:native("godot.TextureRect")
extern class TextureRect extends Control {
    public var expand: Bool;
    public var flipH: Bool;
    public var flipV: Bool;
    public var stretchMode: Int;
    public var texture: Texture;
    @:native("__new")
    public function new();
}
