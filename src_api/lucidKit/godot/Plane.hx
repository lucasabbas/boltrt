package lucidKit.godot;

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
    public function new(v1: GdVector3, v2: GdVector3, v3: GdVector3);
    @:native("__new")
    public function new(normal: GdVector3, d: Float);
    public function center(): Vector3;
    public function distance_to(point: GdVector3): Float;
    public function get_any_point(): Vector3;
    public function has_point(point: GdVector3, epsilon: Float): Bool;
    public function intersect_3(b: Plane, c: Plane): Vector3;
    public function intersects_ray(from: GdVector3, dir: GdVector3): Vector3;
    public function intersects_segment(begin: GdVector3, end: GdVector3): Vector3;
    public function is_equal_approx(plane: Plane): Bool;
    public function is_point_over(point: GdVector3): Bool;
    public function normalized(): Plane;
    public function project(point: GdVector3): Vector3;
}
