package lucidKit.godot;

class PlaneSignalNames {
}
@:native("godot.Plane")
extern class Plane extends lucidKit.core.MonoObject {
    public var d: Float;
    public var normal: Vector3;
    public var x: Float;
    public var y: Float;
    public var z: Float;
    @:native("__new")
    public function new(a: Float, b: Float, c: Float, d: Float);
    @:native("__new")
    public static function v1V2V3(v1: GdVector3, v2: GdVector3, v3: GdVector3): Plane;
    @:native("__new")
    public static function normalD(normal: GdVector3, d: Float): Plane;
    public function center(): Vector3;
    public function distanceTo(point: GdVector3): Float;
    public function getAnyPoint(): Vector3;
    public function hasPoint(point: GdVector3, epsilon: Float = 1e-05): Bool;
    public function intersect3(b: Plane, c: Plane): Vector3;
    public function intersectsRay(from: GdVector3, dir: GdVector3): Vector3;
    public function intersectsSegment(begin: GdVector3, end: GdVector3): Vector3;
    public function isEqualApprox(plane: Plane): Bool;
    public function isPointOver(point: GdVector3): Bool;
    public function normalized(): Plane;
    public function project(point: GdVector3): Vector3;
}
