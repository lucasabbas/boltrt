package lucidKit.godot;

@:native("godot.Basis")
extern class GdBasis extends lucidKit.core.MonoObject {
    public var x: Vector3;
    public var y: Vector3;
    public var z: Vector3;
    @:native("__new")
    public static function from(from: Quat): Basis;
    @:native("__new")
    public static function from_GdVector3(from: GdVector3): Basis;
    @:native("__new")
    public static function axis_angle(axis: GdVector3, angle: Float): Basis;
    @:native("__new")
    public function new(x_axis: GdVector3, y_axis: GdVector3, z_axis: GdVector3);
    public function determinant(): Float;
    public function get_euler(): Vector3;
    public function get_orthogonal_index(): Int;
    public function get_rotation_quat(): Quat;
    public function get_scale(): Vector3;
    public function inverse(): Basis;
    public function is_equal_approx(b: Basis, epsilon: Float): Bool;
    public function orthonormalized(): Basis;
    public function rotated(axis: GdVector3, angle: Float): Basis;
    public function scaled(scale: GdVector3): Basis;
    public function slerp(to: Basis, weight: Float): Basis;
    public function tdotx(with: GdVector3): Float;
    public function tdoty(with: GdVector3): Float;
    public function tdotz(with: GdVector3): Float;
    public function transposed(): Basis;
    public function xform(v: GdVector3): Vector3;
    public function xform_inv(v: GdVector3): Vector3;
}
