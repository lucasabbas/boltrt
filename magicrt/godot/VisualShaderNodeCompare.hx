package magicrt.godot;

class VisualShaderNodeCompareType {
    public static var Scalar: Int = 0;
    public static var Vector: Int = 1;
    public static var Boolean: Int = 2;
    public static var Transform: Int = 3;
}
class VisualShaderNodeCompareFunction {
    public static var Equal: Int = 0;
    public static var NotEqual: Int = 1;
    public static var GreaterThan: Int = 2;
    public static var GreaterThanEqual: Int = 3;
    public static var LessThan: Int = 4;
    public static var LessThanEqual: Int = 5;
}
class VisualShaderNodeCompareCondition {
    public static var All: Int = 0;
    public static var Any: Int = 1;
}
class VisualShaderNodeCompareSignalNames {
}
@:native("godot.VisualShaderNodeCompare")
extern class VisualShaderNodeCompare extends VisualShaderNode {
    public var condition: Int;
    public var function: Int;
    public var type: Int;
    @:native("__new")
    public function new();
}
