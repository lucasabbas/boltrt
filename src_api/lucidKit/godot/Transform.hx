package lucidKit.godot;

@:native("godot.Transform")
extern class Transform extends lucidKit.core.MonoObject {
    public var basis: Basis;
    public var origin: Vector3;
    @:native("__new")
    public function new(x_axis: GdVector3, y_axis: GdVector3, z_axis: GdVector3, origin: GdVector3);
    @:native("__new")
    public function new(basis: Basis, origin: GdVector3);
    @:native("__new")
    public function new(from: Transform2D);
    @:native("__new")
    public function new(from: Quat);
    @:native("__new")
    public function new(from: Basis);
    public function affine_inverse(): Transform;
    public function interpolate_with(transform: Transform, weight: Float): Transform;
    public function inverse(): Transform;
    public function is_equal_approx(transform: Transform): Bool;
    public function looking_at(target: GdVector3, up: GdVector3): Transform;
    public function orthonormalized(): Transform;
    public function rotated(axis: GdVector3, angle: Float): Transform;
    public function scaled(scale: GdVector3): Transform;
    public function translated(offset: GdVector3): Transform;
    public function xform(v: Variant): Variant;
    public function xform_inv(v: Variant): Variant;
}
