package lucidkit.godot;

@:native("godot.PhysicsDirectSpaceState")
extern class PhysicsDirectSpaceState extends Object {
    public function cast_motion(shape: PhysicsShapeQueryParameters, motion: GdVector3): Array<Dynamic>;
    public function collide_shape(shape: PhysicsShapeQueryParameters, max_results: Int): Array<Dynamic>;
    public function get_rest_info(shape: PhysicsShapeQueryParameters): Map<Dynamic, Dynamic>;
    public function intersect_point(point: GdVector3, max_results: Int, exclude: Array<Dynamic>, collision_layer: Int, collide_with_bodies: Bool, collide_with_areas: Bool): Array<Dynamic>;
    public function intersect_ray(from: GdVector3, to: GdVector3, exclude: Array<Dynamic>, collision_mask: Int, collide_with_bodies: Bool, collide_with_areas: Bool): Map<Dynamic, Dynamic>;
    public function intersect_shape(shape: PhysicsShapeQueryParameters, max_results: Int): Array<Dynamic>;
}
