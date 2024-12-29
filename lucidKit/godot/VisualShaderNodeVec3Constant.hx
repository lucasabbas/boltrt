package lucidKit.godot;

@:native("godot.VisualShaderNodeVec3Constant")
extern class VisualShaderNodeVec3Constant extends VisualShaderNode {
    public var constant: Vector3;
    @:native("__new")
    public function new();
}
