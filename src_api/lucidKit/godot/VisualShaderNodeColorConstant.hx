package lucidKit.godot;

@:native("godot.VisualShaderNodeColorConstant")
extern class VisualShaderNodeColorConstant extends VisualShaderNode {
    public var constant: Color;
    @:native("__new")
    public function new();
}
