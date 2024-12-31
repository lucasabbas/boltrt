package lucidKit.godot;

class VisualShaderNodeVectorFuncFunction {
    public static var Normalize: Int = 0;
    public static var Saturate: Int = 1;
    public static var Negate: Int = 2;
    public static var Reciprocal: Int = 3;
    public static var Rgb2hsv: Int = 4;
    public static var Hsv2rgb: Int = 5;
    public static var Abs: Int = 6;
    public static var Acos: Int = 7;
    public static var Acosh: Int = 8;
    public static var Asin: Int = 9;
    public static var Asinh: Int = 10;
    public static var Atan: Int = 11;
    public static var Atanh: Int = 12;
    public static var Ceil: Int = 13;
    public static var Cos: Int = 14;
    public static var Cosh: Int = 15;
    public static var Degrees: Int = 16;
    public static var Exp: Int = 17;
    public static var Exp2: Int = 18;
    public static var Floor: Int = 19;
    public static var Frac: Int = 20;
    public static var InverseSqrt: Int = 21;
    public static var Log: Int = 22;
    public static var Log2: Int = 23;
    public static var Radians: Int = 24;
    public static var Round: Int = 25;
    public static var Roundeven: Int = 26;
    public static var Sign: Int = 27;
    public static var Sin: Int = 28;
    public static var Sinh: Int = 29;
    public static var Sqrt: Int = 30;
    public static var Tan: Int = 31;
    public static var Tanh: Int = 32;
    public static var Trunc: Int = 33;
    public static var Oneminus: Int = 34;
}
class VisualShaderNodeVectorFuncSignalNames {
}
@:native("godot.VisualShaderNodeVectorFunc")
extern class VisualShaderNodeVectorFunc extends VisualShaderNode {
    public var function: Int;
    @:native("__new")
    public function new();
}
