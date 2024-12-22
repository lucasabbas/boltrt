package lucidkit.godot;

@:native("godot.Physics2DDirectSpaceState")
extern class Physics2DDirectSpaceState extends Object {
    public function cast_motion(shape: Physics2DShapeQueryParameters): Array<Dynamic>;
    public function collide_shape(shape: Physics2DShapeQueryParameters, max_results: Int): Array<Dynamic>;
    public function get_rest_info(shape: Physics2DShapeQueryParameters): Map<Dynamic, Dynamic>;
    public function intersect_point(point: GdVector2, max_results: Int, exclude: Array<Dynamic>, collision_layer: Int, collide_with_bodies: Bool, collide_with_areas: Bool): Array<Dynamic>;
    public function intersect_point_on_canvas(point: GdVector2, canvas_instance_id: Int, max_results: Int, exclude: Array<Dynamic>, collision_layer: Int, collide_with_bodies: Bool, collide_with_areas: Bool): Array<Dynamic>;
    public function intersect_ray(from: GdVector2, to: GdVector2, exclude: Array<Dynamic>, collision_layer: Int, collide_with_bodies: Bool, collide_with_areas: Bool): Map<Dynamic, Dynamic>;
    public function intersect_shape(shape: Physics2DShapeQueryParameters, max_results: Int): Array<Dynamic>;
}
