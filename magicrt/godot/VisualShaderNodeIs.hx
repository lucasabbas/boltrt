package magicrt.godot;

class VisualShaderNodeIsFunction {
    public static var Inf: Int = 0;
    public static var Nan: Int = 1;
}
class VisualShaderNodeIsSignalNames {
}
@:native("godot.VisualShaderNodeIs")
extern class VisualShaderNodeIs extends VisualShaderNode {
    public var function: Int;
    @:native("__new")
    public function new();
}
