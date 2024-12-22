package lucidKit.godot;

@:native("godot.Color")
extern class Color extends lucidKit.core.MonoObject {
    public var a: Float;
    public var a8: Int;
    public var b: Float;
    public var b8: Int;
    public var g: Float;
    public var g8: Int;
    public var h: Float;
    public var r: Float;
    public var r8: Int;
    public var s: Float;
    public var v: Float;
    @:native("__new")
    public function new(from: String);
    @:native("__new")
    public static function from(from: Int): Color;
    @:native("__new")
    public static function from_alpha(from: Color, alpha: Float): Color;
    @:native("__new")
    public static function r_g_b(r: Float, g: Float, b: Float): Color;
    @:native("__new")
    public static function r_g_b_a(r: Float, g: Float, b: Float, a: Float): Color;
    public function blend(over: Color): Color;
    public function contrasted(): Color;
    public function darkened(amount: Float): Color;
    public function from_hsv(h: Float, s: Float, v: Float, a: Float): Color;
    public function get_luminance(): Float;
    public function gray(): Float;
    public function inverted(): Color;
    public function is_equal_approx(color: Color): Bool;
    public function lightened(amount: Float): Color;
    public function linear_interpolate(to: Color, weight: Float): Color;
    public function to_abgr32(): Int;
    public function to_abgr64(): Int;
    public function to_argb32(): Int;
    public function to_argb64(): Int;
    public function to_html(with_alpha: Bool): String;
    public function to_rgba32(): Int;
    public function to_rgba64(): Int;
}
