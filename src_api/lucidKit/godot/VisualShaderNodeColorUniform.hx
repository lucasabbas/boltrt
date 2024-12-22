package lucidKit.godot;

@:native("godot.VisualShaderNodeColorUniform")
extern class VisualShaderNodeColorUniform extends VisualShaderNodeUniform {
    public var defaultValue: Color;
    public var defaultValueEnabled: Bool;
    @:native("__new")
    public function new();
}
