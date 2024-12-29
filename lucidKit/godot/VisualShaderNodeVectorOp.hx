package lucidKit.godot;

@:native("godot.VisualShaderNodeVectorOp")
extern class VisualShaderNodeVectorOp extends VisualShaderNode {
    public var operator: Int;
    @:native("__new")
    public function new();
}
