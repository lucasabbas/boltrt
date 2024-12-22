package lucidkit.godot;

@:native("godot.Particles2D")
extern class Particles2D extends Node2D {
    public var amount: Int;
    public var draw_order: Int;
    public var emitting: Bool;
    public var explosiveness: Float;
    public var fixed_fps: Int;
    public var fract_delta: Bool;
    public var lifetime: Float;
    public var local_coords: Bool;
    public var normal_map: Texture;
    public var one_shot: Bool;
    public var preprocess: Float;
    public var process_material: Material;
    public var randomness: Float;
    public var speed_scale: Float;
    public var texture: Texture;
    public var visibility_rect: Rect2;
    public function capture_rect(): Rect2;
    public function restart(): Void;
}
