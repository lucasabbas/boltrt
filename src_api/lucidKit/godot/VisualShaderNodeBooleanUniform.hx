package lucidKit.godot;

@:native("godot.VisualShaderNodeBooleanUniform")
extern class VisualShaderNodeBooleanUniform extends VisualShaderNodeUniform {
    public var defaultValue: Bool;
    public var defaultValueEnabled: Bool;
    @:native("__new")
    public function new();
}