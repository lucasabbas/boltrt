package lucidKit.godot;

@:native("godot.TextureButton")
extern class TextureButton extends BaseButton {
    public var expand: Bool;
    public var flipH: Bool;
    public var flipV: Bool;
    public var stretchMode: Int;
    public var textureClickMask: BitMap;
    public var textureDisabled: Texture;
    public var textureFocused: Texture;
    public var textureHover: Texture;
    public var textureNormal: Texture;
    public var texturePressed: Texture;
    @:native("__new")
    public function new();
}
