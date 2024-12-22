package lucidkit.godot;

@:native("godot.Quat")
extern class GdQuat extends lucidkit.core.MonoObject {
    public var w: Float;
    public var x: Float;
    public var y: Float;
    public var z: Float;
    @:native("__new")
    public static function from(from: Basis): Quat;
    @:native("__new")
    public static function euler(euler: GdVector3): Quat;
    @:native("__new")
    public static function axis_angle(axis: GdVector3, angle: Float): Quat;
    @:native("__new")
    public function new(x: Float, y: Float, z: Float, w: Float);
    public function angle_to(to: Quat): Float;
    public function cubic_slerp(b: Quat, pre_a: Quat, post_b: Quat, weight: Float): Quat;
    public function dot(b: Quat): Float;
    public function get_euler(): Vector3;
    public function inverse(): Quat;
    public function is_equal_approx(quat: Quat): Bool;
    public function is_normalized(): Bool;
    public function length(): Float;
    public function length_squared(): Float;
    public function normalized(): Quat;
    public function set_axis_angle(axis: GdVector3, angle: Float): Dynamic;
    public function set_euler(euler: GdVector3): Dynamic;
    public function slerp(to: Quat, weight: Float): Quat;
    public function slerpni(to: Quat, weight: Float): Quat;
    public function xform(v: GdVector3): Vector3;
}
