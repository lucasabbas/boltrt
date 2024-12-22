package lucidKit.godot;

@:native("godot.VisualShaderNodeUniform")
extern class VisualShaderNodeUniform extends VisualShaderNode {
    public var uniform_name: String;
    @:native("__new")
    public function new();
}
