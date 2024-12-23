package lucidKit.godot;

@:native("godot.VisualShaderNodeScalarUniform")
extern class VisualShaderNodeScalarUniform extends VisualShaderNodeUniform {
    public var defaultValue: Float;
    public var defaultValueEnabled: Bool;
    public var hint: Int;
    public var max: Float;
    public var min: Float;
    public var step: Float;
    @:native("__new")
    public function new();
}
