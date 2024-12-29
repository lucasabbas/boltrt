package lucidKit.godot;

@:native("godot.ReferenceRect")
extern class ReferenceRect extends Control {
    public var borderColor: Color;
    public var borderWidth: Float;
    public var editorOnly: Bool;
    @:native("__new")
    public function new();
}
