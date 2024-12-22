package lucidKit.godot;

@:native("godot.VisualShaderNodeUniformRef")
extern class VisualShaderNodeUniformRef extends VisualShaderNode {
    public var uniform_name: String;
    @:native("__new")
    public function new();
}
