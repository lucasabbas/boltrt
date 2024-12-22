package lucidKit.godot;

@:native("godot.LinkButton")
extern class LinkButton extends BaseButton {
    public var focus_mode: Int;
    public var mouse_default_cursor_shape: Int;
    public var text: String;
    public var underline: Int;
    public var uri: String;
    @:native("__new")
    public function new();
}
