package bolt.godot;

class VisualShaderNodeScalarUniformHint {
    public static var None: Int = 0;
    public static var Range: Int = 1;
    public static var RangeStep: Int = 2;
    public static var Max: Int = 3;
}
class VisualShaderNodeScalarUniformSignalNames {
}
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
