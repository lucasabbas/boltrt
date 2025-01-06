package magicrt.godot;

class VisualShaderNodeTransformVecMultOperator {
    public static var Axb: Int = 0;
    public static var Bxa: Int = 1;
    public static var Op3x3Axb: Int = 2;
    public static var Op3x3Bxa: Int = 3;
}
class VisualShaderNodeTransformVecMultSignalNames {
}
@:native("godot.VisualShaderNodeTransformVecMult")
extern class VisualShaderNodeTransformVecMult extends VisualShaderNode {
    public var operator: Int;
    @:native("__new")
    public function new();
}
