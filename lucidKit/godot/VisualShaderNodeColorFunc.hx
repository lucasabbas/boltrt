package lucidKit.godot;

class VisualShaderNodeColorFuncFunction {
    public static var Grayscale: Int = 0;
    public static var Sepia: Int = 1;
}
class VisualShaderNodeColorFuncSignalNames {
}
@:native("godot.VisualShaderNodeColorFunc")
extern class VisualShaderNodeColorFunc extends VisualShaderNode {
    public var function: Int;
    @:native("__new")
    public function new();
}
