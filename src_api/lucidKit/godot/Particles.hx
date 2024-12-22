package lucidkit.godot;

@:native("godot.Particles")
extern class Particles extends GeometryInstance {
    public var amount: Int;
    public var draw_order: Int;
    public var draw_pass_1: Mesh;
    public var draw_pass_2: Mesh;
    public var draw_pass_3: Mesh;
    public var draw_pass_4: Mesh;
    public var draw_passes: Int;
    public var emitting: Bool;
    public var explosiveness: Float;
    public var fixed_fps: Int;
    public var fract_delta: Bool;
    public var lifetime: Float;
    public var local_coords: Bool;
    public var one_shot: Bool;
    public var preprocess: Float;
    public var process_material: Material;
    public var randomness: Float;
    public var speed_scale: Float;
    public var visibility_aabb: AABB;
    public function capture_aabb(): AABB;
    public function get_draw_pass_mesh(pass: Int): Mesh;
    public function restart(): Void;
    public function set_draw_pass_mesh(pass: Int, mesh: Mesh): Void;
}
