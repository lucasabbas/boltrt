package lucidKit.godot;

@:native("godot.VisualShaderNodeTransformConstant")
extern class VisualShaderNodeTransformConstant extends VisualShaderNode {
    public var constant: Transform;
    @:native("__new")
    public function new();
}
