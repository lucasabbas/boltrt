package lucidKit.godot;

class ColorSignalNames {
}
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
    public static function fromAlpha(from: Color, alpha: Float): Color;
    @:native("__new")
    public static function rGB(r: Float, g: Float, b: Float): Color;
    @:native("__new")
    public static function rGBA(r: Float, g: Float, b: Float, a: Float): Color;
    public function blend(over: Color): Color;
    public function contrasted(): Color;
    public function darkened(amount: Float): Color;
    public function fromHsv(h: Float, s: Float, v: Float, a: Float = 1.0): Color;
    public function getLuminance(): Float;
    public function gray(): Float;
    public function inverted(): Color;
    public function isEqualApprox(color: Color): Bool;
    public function lightened(amount: Float): Color;
    public function linearInterpolate(to: Color, weight: Float): Color;
    public function toAbgr32(): Int;
    public function toAbgr64(): Int;
    public function toArgb32(): Int;
    public function toArgb64(): Int;
    public function toHtml(withAlpha: Bool = true): String;
    public function toRgba32(): Int;
    public function toRgba64(): Int;
}
