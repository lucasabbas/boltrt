package lucidkit.godot;

@:native("godot.Vector3")
extern class GdVector3 extends lucidkit.core.MonoObject {
    public var x: Float;
    public var y: Float;
    public var z: Float;
    @:native("__new")
    public function new(x: Float, y: Float, z: Float);
    public function abs(): Vector3;
    public function angle_to(to: GdVector3): Float;
    public function bounce(n: GdVector3): Vector3;
    public function ceil(): Vector3;
    public function cross(b: GdVector3): Vector3;
    public function cubic_interpolate(b: GdVector3, pre_a: GdVector3, post_b: GdVector3, weight: Float): Vector3;
    public function direction_to(b: GdVector3): Vector3;
    public function distance_squared_to(b: GdVector3): Float;
    public function distance_to(b: GdVector3): Float;
    public function dot(b: GdVector3): Float;
    public function floor(): Vector3;
    public function inverse(): Vector3;
    public function is_equal_approx(v: GdVector3): Bool;
    public function is_normalized(): Bool;
    public function is_zero_approx(): Bool;
    public function length(): Float;
    public function length_squared(): Float;
    public function limit_length(length: Float): Vector3;
    public function linear_interpolate(to: GdVector3, weight: Float): Vector3;
    public function max_axis(): Int;
    public function min_axis(): Int;
    public function move_toward(to: GdVector3, delta: Float): Vector3;
    public function normalized(): Vector3;
    public function outer(b: GdVector3): Basis;
    public function posmod(mod: Float): Vector3;
    public function posmodv(modv: GdVector3): Vector3;
    public function project(b: GdVector3): Vector3;
    public function reflect(n: GdVector3): Vector3;
    public function rotated(axis: GdVector3, angle: Float): Vector3;
    public function round(): Vector3;
    public function sign(): Vector3;
    public function signed_angle_to(to: GdVector3, axis: GdVector3): Float;
    public function slerp(to: GdVector3, weight: Float): Vector3;
    public function slide(n: GdVector3): Vector3;
    public function snapped(by: GdVector3): Vector3;
    public function to_diagonal_matrix(): Basis;
}
