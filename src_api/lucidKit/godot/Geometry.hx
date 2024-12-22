package lucidKit.godot;

@:native("godot.Geometry")
extern class Geometry extends Object {
    public function build_box_planes(extents: GdVector3): Array<Dynamic>;
    public function build_capsule_planes(radius: Float, height: Float, sides: Int, lats: Int, axis: Int): Array<Dynamic>;
    public function build_cylinder_planes(radius: Float, height: Float, sides: Int, axis: Int): Array<Dynamic>;
    public function clip_polygon(points: PoolVector3Array, plane: Plane): PoolVector3Array;
    public function clip_polygons_2d(polygon_a: PoolVector2Array, polygon_b: PoolVector2Array): Array<Dynamic>;
    public function clip_polyline_with_polygon_2d(polyline: PoolVector2Array, polygon: PoolVector2Array): Array<Dynamic>;
    public function convex_hull_2d(points: PoolVector2Array): PoolVector2Array;
    public function exclude_polygons_2d(polygon_a: PoolVector2Array, polygon_b: PoolVector2Array): Array<Dynamic>;
    public function get_closest_point_to_segment(point: GdVector3, s1: GdVector3, s2: GdVector3): Vector3;
    public function get_closest_point_to_segment_2d(point: GdVector2, s1: GdVector2, s2: GdVector2): Vector2;
    public function get_closest_point_to_segment_uncapped(point: GdVector3, s1: GdVector3, s2: GdVector3): Vector3;
    public function get_closest_point_to_segment_uncapped_2d(point: GdVector2, s1: GdVector2, s2: GdVector2): Vector2;
    public function get_closest_points_between_segments(p1: GdVector3, p2: GdVector3, q1: GdVector3, q2: GdVector3): PoolVector3Array;
    public function get_closest_points_between_segments_2d(p1: GdVector2, q1: GdVector2, p2: GdVector2, q2: GdVector2): PoolVector2Array;
    public function get_uv84_normal_bit(normal: GdVector3): Int;
    public function intersect_polygons_2d(polygon_a: PoolVector2Array, polygon_b: PoolVector2Array): Array<Dynamic>;
    public function intersect_polyline_with_polygon_2d(polyline: PoolVector2Array, polygon: PoolVector2Array): Array<Dynamic>;
    public function is_point_in_circle(point: GdVector2, circle_position: GdVector2, circle_radius: Float): Bool;
    public function is_point_in_polygon(point: GdVector2, polygon: PoolVector2Array): Bool;
    public function is_polygon_clockwise(polygon: PoolVector2Array): Bool;
    public function line_intersects_line_2d(from_a: GdVector2, dir_a: GdVector2, from_b: GdVector2, dir_b: GdVector2): Variant;
    public function make_atlas(sizes: PoolVector2Array): Map<Dynamic, Dynamic>;
    public function merge_polygons_2d(polygon_a: PoolVector2Array, polygon_b: PoolVector2Array): Array<Dynamic>;
    public function offset_polygon_2d(polygon: PoolVector2Array, delta: Float, join_type: Int): Array<Dynamic>;
    public function offset_polyline_2d(polyline: PoolVector2Array, delta: Float, join_type: Int, end_type: Int): Array<Dynamic>;
    public function point_is_inside_triangle(point: GdVector2, a: GdVector2, b: GdVector2, c: GdVector2): Bool;
    public function ray_intersects_triangle(from: GdVector3, dir: GdVector3, a: GdVector3, b: GdVector3, c: GdVector3): Variant;
    public function segment_intersects_circle(segment_from: GdVector2, segment_to: GdVector2, circle_position: GdVector2, circle_radius: Float): Float;
    public function segment_intersects_convex(from: GdVector3, to: GdVector3, planes: Array<Dynamic>): PoolVector3Array;
    public function segment_intersects_cylinder(from: GdVector3, to: GdVector3, height: Float, radius: Float): PoolVector3Array;
    public function segment_intersects_segment_2d(from_a: GdVector2, to_a: GdVector2, from_b: GdVector2, to_b: GdVector2): Variant;
    public function segment_intersects_sphere(from: GdVector3, to: GdVector3, sphere_position: GdVector3, sphere_radius: Float): PoolVector3Array;
    public function segment_intersects_triangle(from: GdVector3, to: GdVector3, a: GdVector3, b: GdVector3, c: GdVector3): Variant;
    public function triangulate_delaunay_2d(points: PoolVector2Array): PoolIntArray;
    public function triangulate_polygon(polygon: PoolVector2Array): PoolIntArray;
    @:native("__new")
    public function new();
}
