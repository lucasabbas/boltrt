package lucidkit.godot;

@:native("godot.VisualShaderNodeScalarUniform")
extern class VisualShaderNodeScalarUniform extends VisualShaderNodeUniform {
    public var default_value: Float;
    public var default_value_enabled: Bool;
    public var hint: Int;
    public var max: Float;
    public var min: Float;
    public var step: Float;
}
