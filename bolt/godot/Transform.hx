package bolt.godot;

class TransformSignalNames {
}
@:native("godot.Transform")
extern class Transform extends bolt.core.MonoObject {
    public var basis: Basis;
    public var origin: Vector3;
    @:native("__new")
    public function new(xAxis: GdVector3, yAxis: GdVector3, zAxis: GdVector3, origin: GdVector3);
    @:native("__new")
    public static function basisOrigin(basis: Basis, origin: GdVector3): Transform;
    @:native("__new")
    public static function from(from: Transform2D): Transform;
    @:native("__new")
    public static function fromQuat(from: Quat): Transform;
    @:native("__new")
    public static function fromBasis(from: Basis): Transform;
    public function affineInverse(): Transform;
    public function interpolateWith(transform: Transform, weight: Float): Transform;
    public function inverse(): Transform;
    public function isEqualApprox(transform: Transform): Bool;
    public function lookingAt(target: GdVector3, up: GdVector3): Transform;
    public function orthonormalized(): Transform;
    public function rotated(axis: GdVector3, angle: Float): Transform;
    public function scaled(scale: GdVector3): Transform;
    public function translated(offset: GdVector3): Transform;
    public function xform(v: Dynamic): Dynamic;
    public function xformInv(v: Dynamic): Dynamic;
}
