package lucidKit.godot;

@:native("godot.AABB")
extern class AABB extends lucidKit.core.MonoObject {
    public var end: Vector3;
    public var position: Vector3;
    public var size: Vector3;
    @:native("__new")
    public function new(position: GdVector3, size: GdVector3);
    public function abs(): AABB;
    public function encloses(with: AABB): Bool;
    public function expand(to_point: GdVector3): AABB;
    public function get_area(): Float;
    public function get_center(): Vector3;
    public function get_endpoint(idx: Int): Vector3;
    public function get_longest_axis(): Vector3;
    public function get_longest_axis_index(): Int;
    public function get_longest_axis_size(): Float;
    public function get_shortest_axis(): Vector3;
    public function get_shortest_axis_index(): Int;
    public function get_shortest_axis_size(): Float;
    public function get_support(dir: GdVector3): Vector3;
    public function grow(by: Float): AABB;
    public function has_no_area(): Bool;
    public function has_no_surface(): Bool;
    public function has_point(point: GdVector3): Bool;
    public function intersection(with: AABB): AABB;
    public function intersects(with: AABB): Bool;
    public function intersects_plane(plane: Plane): Bool;
    public function intersects_segment(from: GdVector3, to: GdVector3): Bool;
    public function is_equal_approx(aabb: AABB): Bool;
    public function merge(with: AABB): AABB;
}
