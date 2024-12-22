package lucidkit.godot;

@:native("godot.Button")
extern class Button extends BaseButton {
    public var align: Int;
    public var clip_text: Bool;
    public var expand_icon: Bool;
    public var flat: Bool;
    public var icon: Texture;
    public var icon_align: Int;
    public var text: String;
}
