package lucidKit.godot;

@:native("godot.Button")
extern class Button extends BaseButton {
    public var align: Int;
    public var clipText: Bool;
    public var expandIcon: Bool;
    public var flat: Bool;
    public var icon: Texture;
    public var iconAlign: Int;
    public var text: String;
    @:native("__new")
    public function new();
}
