package lucidkit.godot;

@:native("godot.Color")
extern class Color extends lucidkit.core.MonoObject {
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
    public function new(from: Int);
    @:native("__new")
    public function new(from: Color, alpha: Float);
    @:native("__new")
    public function new(r: Float, g: Float, b: Float);
    @:native("__new")
    public function new(r: Float, g: Float, b: Float, a: Float);
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
