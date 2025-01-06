package magicrt.godot;

class VisualShaderNodeScalarFuncFunction {
    public static var Sin: Int = 0;
    public static var Cos: Int = 1;
    public static var Tan: Int = 2;
    public static var Asin: Int = 3;
    public static var Acos: Int = 4;
    public static var Atan: Int = 5;
    public static var Sinh: Int = 6;
    public static var Cosh: Int = 7;
    public static var Tanh: Int = 8;
    public static var Log: Int = 9;
    public static var Exp: Int = 10;
    public static var Sqrt: Int = 11;
    public static var Abs: Int = 12;
    public static var Sign: Int = 13;
    public static var Floor: Int = 14;
    public static var Round: Int = 15;
    public static var Ceil: Int = 16;
    public static var Frac: Int = 17;
    public static var Saturate: Int = 18;
    public static var Negate: Int = 19;
    public static var Acosh: Int = 20;
    public static var Asinh: Int = 21;
    public static var Atanh: Int = 22;
    public static var Degrees: Int = 23;
    public static var Exp2: Int = 24;
    public static var InverseSqrt: Int = 25;
    public static var Log2: Int = 26;
    public static var Radians: Int = 27;
    public static var Reciprocal: Int = 28;
    public static var Roundeven: Int = 29;
    public static var Trunc: Int = 30;
    public static var Oneminus: Int = 31;
}
class VisualShaderNodeScalarFuncSignalNames {
}
@:native("godot.VisualShaderNodeScalarFunc")
extern class VisualShaderNodeScalarFunc extends VisualShaderNode {
    public var function: Int;
    @:native("__new")
    public function new();
}
