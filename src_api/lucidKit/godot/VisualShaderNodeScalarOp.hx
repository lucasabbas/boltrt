package lucidKit.godot;

@:native("godot.VisualShaderNodeScalarOp")
extern class VisualShaderNodeScalarOp extends VisualShaderNode {
    public var operator: Int;
    @:native("__new")
    public function new();
}
