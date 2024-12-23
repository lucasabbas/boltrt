package lucidKit.godot;

@:native("godot.VisualShaderNodeInput")
extern class VisualShaderNodeInput extends VisualShaderNode {
    public var inputName: String;
    public function getInputRealName(): String;
    @:native("__new")
    public function new();
}
