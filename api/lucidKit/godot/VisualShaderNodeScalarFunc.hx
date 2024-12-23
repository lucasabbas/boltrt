package lucidKit.godot;

@:native("godot.VisualShaderNodeScalarFunc")
extern class VisualShaderNodeScalarFunc extends VisualShaderNode {
    public var function: Int;
    @:native("__new")
    public function new();
}
