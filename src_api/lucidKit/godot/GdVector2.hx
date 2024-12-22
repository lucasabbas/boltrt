package lucidKit.godot;

@:native("godot.Vector2")
extern class GdVector2 extends lucidKit.core.MonoObject {
    public var x: Float;
    public var y: Float;
    @:native("__new")
    public function new(x: Float, y: Float);
    public function abs(): Vector2;
    public function angle(): Float;
    public function angle_to(to: GdVector2): Float;
    public function angle_to_point(to: GdVector2): Float;
    public function aspect(): Float;
    public function bounce(n: GdVector2): Vector2;
    public function ceil(): Vector2;
    public function clamped(length: Float): Vector2;
    public function cross(with: GdVector2): Float;
    public function cubic_interpolate(b: GdVector2, pre_a: GdVector2, post_b: GdVector2, weight: Float): Vector2;
    public function direction_to(b: GdVector2): Vector2;
    public function distance_squared_to(to: GdVector2): Float;
    public function distance_to(to: GdVector2): Float;
    public function dot(with: GdVector2): Float;
    public function floor(): Vector2;
    public function is_equal_approx(v: GdVector2): Bool;
    public function is_normalized(): Bool;
    public function is_zero_approx(): Bool;
    public function length(): Float;
    public function length_squared(): Float;
    public function limit_length(length: Float): Vector2;
    public function linear_interpolate(to: GdVector2, weight: Float): Vector2;
    public function move_toward(to: GdVector2, delta: Float): Vector2;
    public function normalized(): Vector2;
    public function posmod(mod: Float): Vector2;
    public function posmodv(modv: GdVector2): Vector2;
    public function project(b: GdVector2): Vector2;
    public function reflect(n: GdVector2): Vector2;
    public function rotated(angle: Float): Vector2;
    public function round(): Vector2;
    public function sign(): Vector2;
    public function slerp(to: GdVector2, weight: Float): Vector2;
    public function slide(n: GdVector2): Vector2;
    public function snapped(by: GdVector2): Vector2;
    public function tangent(): Vector2;
}
