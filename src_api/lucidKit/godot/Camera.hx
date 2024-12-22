package lucidKit.godot;

@:native("godot.Camera")
extern class Camera extends Spatial {
    public var affect_lod: Bool;
    public var cull_mask: Int;
    public var current: Bool;
    public var doppler_tracking: Int;
    public var environment: Environment;
    public var far: Float;
    public var fov: Float;
    public var frustum_offset: Vector2;
    public var h_offset: Float;
    public var keep_aspect: Int;
    public var near: Float;
    public var projection: Int;
    public var size: Float;
    public var v_offset: Float;
    public function clear_current(enable_next: Bool): Void;
    public function get_camera_rid(): RID;
    public function get_camera_transform(): Transform;
    public function get_cull_mask_bit(layer: Int): Bool;
    public function get_frustum(): Array<Dynamic>;
    public function is_position_behind(world_point: GdVector3): Bool;
    public function make_current(): Void;
    public function project_local_ray_normal(screen_point: GdVector2): Vector3;
    public function project_position(screen_point: GdVector2, z_depth: Float): Vector3;
    public function project_ray_normal(screen_point: GdVector2): Vector3;
    public function project_ray_origin(screen_point: GdVector2): Vector3;
    public function set_cull_mask_bit(layer: Int, enable: Bool): Void;
    public function set_frustum(size: Float, offset: GdVector2, z_near: Float, z_far: Float): Void;
    public function set_orthogonal(size: Float, z_near: Float, z_far: Float): Void;
    public function set_perspective(fov: Float, z_near: Float, z_far: Float): Void;
    public function unproject_position(world_point: GdVector3): Vector2;
    @:native("__new")
    public function new();
}
