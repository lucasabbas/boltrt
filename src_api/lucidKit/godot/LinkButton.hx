package lucidKit.godot;

@:native("godot.LinkButton")
extern class LinkButton extends BaseButton {
    public var text: String;
    public var underline: Int;
    public var uri: String;
    @:native("__new")
    public function new();
}
