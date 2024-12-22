package lucidKit.godot;

@:native("godot.KinematicBody")
extern class KinematicBody extends PhysicsBody {
    public var axis_lock_motion_x: Bool;
    public var axis_lock_motion_y: Bool;
    public var axis_lock_motion_z: Bool;
    public var collision/safe_margin: Float;
    public var motion/sync_to_physics: Bool;
    public var move_lock_x: Bool;
    public var move_lock_y: Bool;
    public var move_lock_z: Bool;
    public var moving_platform_apply_velocity_on_leave: Int;
    public function get_axis_lock(axis: Int): Bool;
    public function get_floor_angle(up_direction: GdVector3): Float;
    public function get_floor_normal(): Vector3;
    public function get_floor_velocity(): Vector3;
    public function get_last_slide_collision(): KinematicCollision;
    public function get_slide_collision(slide_idx: Int): KinematicCollision;
    public function get_slide_count(): Int;
    public function is_on_ceiling(): Bool;
    public function is_on_floor(): Bool;
    public function is_on_wall(): Bool;
    public function move_and_collide(rel_vec: GdVector3, infinite_inertia: Bool, exclude_raycast_shapes: Bool, test_only: Bool): KinematicCollision;
    public function move_and_slide(linear_velocity: GdVector3, up_direction: GdVector3, stop_on_slope: Bool, max_slides: Int, floor_max_angle: Float, infinite_inertia: Bool): Vector3;
    public function move_and_slide_with_snap(linear_velocity: GdVector3, snap: GdVector3, up_direction: GdVector3, stop_on_slope: Bool, max_slides: Int, floor_max_angle: Float, infinite_inertia: Bool): Vector3;
    public function set_axis_lock(axis: Int, lock: Bool): Void;
    public function test_move(from: Transform, rel_vec: GdVector3, infinite_inertia: Bool): Bool;
    @:native("__new")
    public function new();
}
