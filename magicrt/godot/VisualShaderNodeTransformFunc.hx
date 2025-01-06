package magicrt.godot;

class VisualShaderNodeTransformFuncFunction {
    public static var Inverse: Int = 0;
    public static var Transpose: Int = 1;
}
class VisualShaderNodeTransformFuncSignalNames {
}
@:native("godot.VisualShaderNodeTransformFunc")
extern class VisualShaderNodeTransformFunc extends VisualShaderNode {
    public var function: Int;
    @:native("__new")
    public function new();
}
