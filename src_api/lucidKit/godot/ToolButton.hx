package lucidKit.godot;

@:native("godot.ToolButton")
extern class ToolButton extends Button {
    public var flat: Bool;
    @:native("__new")
    public function new();
}
