package bolt.godot;

class QuatSignalNames {
}
@:native("godot.Quat")
extern class GdQuat extends bolt.core.MonoObject {
    public var w: Float;
    public var x: Float;
    public var y: Float;
    public var z: Float;
    @:native("__new")
    public static function from(from: Basis): Quat;
    @:native("__new")
    public static function euler(euler: GdVector3): Quat;
    @:native("__new")
    public static function axisAngle(axis: GdVector3, angle: Float): Quat;
    @:native("__new")
    public function new(x: Float, y: Float, z: Float, w: Float);
    public function angleTo(to: Quat): Float;
    public function cubicSlerp(b: Quat, preA: Quat, postB: Quat, weight: Float): Quat;
    public function dot(b: Quat): Float;
    public function getEuler(): Vector3;
    public function inverse(): Quat;
    public function isEqualApprox(quat: Quat): Bool;
    public function isNormalized(): Bool;
    public function length(): Float;
    public function lengthSquared(): Float;
    public function normalized(): Quat;
    public function setAxisAngle(axis: GdVector3, angle: Float): Dynamic;
    public function setEuler(euler: GdVector3): Dynamic;
    public function slerp(to: Quat, weight: Float): Quat;
    public function slerpni(to: Quat, weight: Float): Quat;
    public function xform(v: GdVector3): Vector3;
}
