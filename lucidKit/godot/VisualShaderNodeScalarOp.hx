package lucidKit.godot;

class VisualShaderNodeScalarOpOperator {
    public static var Add: Int = 0;
    public static var Sub: Int = 1;
    public static var Mul: Int = 2;
    public static var Div: Int = 3;
    public static var Mod: Int = 4;
    public static var Pow: Int = 5;
    public static var Max: Int = 6;
    public static var Min: Int = 7;
    public static var Atan2: Int = 8;
    public static var Step: Int = 9;
}
class VisualShaderNodeScalarOpSignalNames {
}
@:native("godot.VisualShaderNodeScalarOp")
extern class VisualShaderNodeScalarOp extends VisualShaderNode {
    public var operator: Int;
    @:native("__new")
    public function new();
}
