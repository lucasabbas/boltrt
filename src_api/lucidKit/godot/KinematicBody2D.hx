package lucidKit.godot;

@:native("godot.KinematicBody2D")
extern class KinematicBody2D extends PhysicsBody2D {
    public var collision__safe_margin: Float;
    public var motion__sync_to_physics: Bool;
    public var moving_platform_apply_velocity_on_leave: Int;
    public function get_floor_angle(up_direction: GdVector2): Float;
    public function get_floor_normal(): Vector2;
    public function get_floor_velocity(): Vector2;
    public function get_last_slide_collision(): KinematicCollision2D;
    public function get_slide_collision(slide_idx: Int): KinematicCollision2D;
    public function get_slide_count(): Int;
    public function is_on_ceiling(): Bool;
    public function is_on_floor(): Bool;
    public function is_on_wall(): Bool;
    public function move_and_collide(rel_vec: GdVector2, infinite_inertia: Bool, exclude_raycast_shapes: Bool, test_only: Bool): KinematicCollision2D;
    public function move_and_slide(linear_velocity: GdVector2, up_direction: GdVector2, stop_on_slope: Bool, max_slides: Int, floor_max_angle: Float, infinite_inertia: Bool): Vector2;
    public function move_and_slide_with_snap(linear_velocity: GdVector2, snap: GdVector2, up_direction: GdVector2, stop_on_slope: Bool, max_slides: Int, floor_max_angle: Float, infinite_inertia: Bool): Vector2;
    public function test_move(from: Transform2D, rel_vec: GdVector2, infinite_inertia: Bool): Bool;
    @:native("__new")
    public function new();
}
