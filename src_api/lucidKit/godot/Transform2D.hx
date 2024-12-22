package lucidKit.godot;

@:native("godot.Transform2D")
extern class Transform2D extends lucidKit.core.MonoObject {
    public var origin: Vector2;
    public var x: Vector2;
    public var y: Vector2;
    @:native("__new")
    public function new(from: Transform);
    @:native("__new")
    public static function x_axis_y_axis_origin(x_axis: GdVector2, y_axis: GdVector2, origin: GdVector2): Transform2D;
    @:native("__new")
    public static function rotation_position(rotation: Float, position: GdVector2): Transform2D;
    public function affine_inverse(): Transform2D;
    public function basis_xform(v: GdVector2): Vector2;
    public function basis_xform_inv(v: GdVector2): Vector2;
    public function determinant(): Float;
    public function get_origin(): Vector2;
    public function get_rotation(): Float;
    public function get_scale(): Vector2;
    public function interpolate_with(transform: Transform2D, weight: Float): Transform2D;
    public function inverse(): Transform2D;
    public function is_equal_approx(transform: Transform2D): Bool;
    public function orthonormalized(): Transform2D;
    public function rotated(angle: Float): Transform2D;
    public function scaled(scale: GdVector2): Transform2D;
    public function translated(offset: GdVector2): Transform2D;
    public function xform(v: Variant): Variant;
    public function xform_inv(v: Variant): Variant;
}
