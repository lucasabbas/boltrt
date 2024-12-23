package lucidKit.godot;

@:native("godot.VisualShaderNodeBooleanConstant")
extern class VisualShaderNodeBooleanConstant extends VisualShaderNode {
    public var constant: Bool;
    @:native("__new")
    public function new();
}
