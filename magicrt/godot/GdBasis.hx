package magicrt.godot;

class BasisSignalNames {
}
@:native("godot.Basis")
extern class GdBasis extends magicrt.core.MonoObject {
    public var x: Vector3;
    public var y: Vector3;
    public var z: Vector3;
    @:native("__new")
    public static function from(from: Quat): Basis;
    @:native("__new")
    public static function fromGdVector3(from: GdVector3): Basis;
    @:native("__new")
    public static function axisAngle(axis: GdVector3, angle: Float): Basis;
    @:native("__new")
    public function new(xAxis: GdVector3, yAxis: GdVector3, zAxis: GdVector3);
    public function determinant(): Float;
    public function getEuler(): Vector3;
    public function getOrthogonalIndex(): Int;
    public function getRotationQuat(): Quat;
    public function getScale(): Vector3;
    public function inverse(): Basis;
    public function isEqualApprox(b: Basis, epsilon: Float = 1e-05): Bool;
    public function orthonormalized(): Basis;
    public function rotated(axis: GdVector3, angle: Float): Basis;
    public function scaled(scale: GdVector3): Basis;
    public function slerp(to: Basis, weight: Float): Basis;
    public function tdotx(with: GdVector3): Float;
    public function tdoty(with: GdVector3): Float;
    public function tdotz(with: GdVector3): Float;
    public function transposed(): Basis;
    public function xform(v: GdVector3): Vector3;
    public function xformInv(v: GdVector3): Vector3;
}
