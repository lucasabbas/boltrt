package lucidKit.godot;

@:native("godot.VisualShaderNodeScalarConstant")
extern class VisualShaderNodeScalarConstant extends VisualShaderNode {
    public var constant: Float;
    @:native("__new")
    public function new();
}
