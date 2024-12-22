package lucidKit.godot;

@:native("godot.TextureButton")
extern class TextureButton extends BaseButton {
    public var expand: Bool;
    public var flip_h: Bool;
    public var flip_v: Bool;
    public var stretch_mode: Int;
    public var texture_click_mask: BitMap;
    public var texture_disabled: Texture;
    public var texture_focused: Texture;
    public var texture_hover: Texture;
    public var texture_normal: Texture;
    public var texture_pressed: Texture;
    @:native("__new")
    public function new();
}
