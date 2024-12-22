package lucidKit.godot;

@:native("godot.VisualShaderNodeUniformRef")
extern class VisualShaderNodeUniformRef extends VisualShaderNode {
    public var uniformName: String;
    @:native("__new")
    public function new();
}
