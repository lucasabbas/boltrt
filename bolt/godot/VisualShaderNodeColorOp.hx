package bolt.godot;

class VisualShaderNodeColorOpOperator {
    public static var Screen: Int = 0;
    public static var Difference: Int = 1;
    public static var Darken: Int = 2;
    public static var Lighten: Int = 3;
    public static var Overlay: Int = 4;
    public static var Dodge: Int = 5;
    public static var Burn: Int = 6;
    public static var SoftLight: Int = 7;
    public static var HardLight: Int = 8;
}
class VisualShaderNodeColorOpSignalNames {
}
@:native("godot.VisualShaderNodeColorOp")
extern class VisualShaderNodeColorOp extends VisualShaderNode {
    public var operator: Int;
    @:native("__new")
    public function new();
}
