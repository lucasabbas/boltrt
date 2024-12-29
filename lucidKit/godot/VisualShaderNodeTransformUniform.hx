package lucidKit.godot;

@:native("godot.VisualShaderNodeTransformUniform")
extern class VisualShaderNodeTransformUniform extends VisualShaderNodeUniform {
    public var defaultValue: Transform;
    public var defaultValueEnabled: Bool;
    @:native("__new")
    public function new();
}
