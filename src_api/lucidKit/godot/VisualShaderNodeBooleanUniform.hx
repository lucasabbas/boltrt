package lucidKit.godot;

@:native("godot.VisualShaderNodeBooleanUniform")
extern class VisualShaderNodeBooleanUniform extends VisualShaderNodeUniform {
    public var default_value: Bool;
    public var default_value_enabled: Bool;
    @:native("__new")
    public function new();
}
