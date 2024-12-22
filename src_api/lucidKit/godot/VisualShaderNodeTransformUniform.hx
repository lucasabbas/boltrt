package lucidKit.godot;

@:native("godot.VisualShaderNodeTransformUniform")
extern class VisualShaderNodeTransformUniform extends VisualShaderNodeUniform {
    public var default_value: Transform;
    public var default_value_enabled: Bool;
    @:native("__new")
    public function new();
}
