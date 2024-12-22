package lucidKit.godot;

@:native("godot.VisualShaderNodeVec3Uniform")
extern class VisualShaderNodeVec3Uniform extends VisualShaderNodeUniform {
    public var default_value: Vector3;
    public var default_value_enabled: Bool;
    @:native("__new")
    public function new();
}
