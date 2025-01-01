package bolt.godot;

class VisualShaderNodeVectorDerivativeFuncFunction {
    public static var Sum: Int = 0;
    public static var X: Int = 1;
    public static var Y: Int = 2;
}
class VisualShaderNodeVectorDerivativeFuncSignalNames {
}
@:native("godot.VisualShaderNodeVectorDerivativeFunc")
extern class VisualShaderNodeVectorDerivativeFunc extends VisualShaderNode {
    public var function: Int;
    @:native("__new")
    public function new();
}
