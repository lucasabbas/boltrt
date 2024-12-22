package lucidKit.godot;

@:native("godot.VisualShaderNodeVec3Uniform")
extern class VisualShaderNodeVec3Uniform extends VisualShaderNodeUniform {
    public var defaultValue: Vector3;
    public var defaultValueEnabled: Bool;
    @:native("__new")
    public function new();
}
