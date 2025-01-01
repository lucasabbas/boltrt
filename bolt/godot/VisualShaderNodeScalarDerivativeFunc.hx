package bolt.godot;

class VisualShaderNodeScalarDerivativeFuncFunction {
    public static var Sum: Int = 0;
    public static var X: Int = 1;
    public static var Y: Int = 2;
}
class VisualShaderNodeScalarDerivativeFuncSignalNames {
}
@:native("godot.VisualShaderNodeScalarDerivativeFunc")
extern class VisualShaderNodeScalarDerivativeFunc extends VisualShaderNode {
    public var function: Int;
    @:native("__new")
    public function new();
}
