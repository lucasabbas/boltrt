package lucidKit.godot;

class VisualShaderNodeTransformMultOperator {
    public static var Axb: Int = 0;
    public static var Bxa: Int = 1;
    public static var AxbComp: Int = 2;
    public static var BxaComp: Int = 3;
}
class VisualShaderNodeTransformMultSignalNames {
}
@:native("godot.VisualShaderNodeTransformMult")
extern class VisualShaderNodeTransformMult extends VisualShaderNode {
    public var operator: Int;
    @:native("__new")
    public function new();
}
