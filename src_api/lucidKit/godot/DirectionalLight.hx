package lucidKit.godot;

@:native("godot.DirectionalLight")
extern class DirectionalLight extends Light {
    public var directional_shadow_bias_split_scale: Float;
    public var directional_shadow_blend_splits: Bool;
    public var directional_shadow_depth_range: Int;
    public var directional_shadow_fade_start: Float;
    public var directional_shadow_max_distance: Float;
    public var directional_shadow_mode: Int;
    public var directional_shadow_normal_bias: Float;
    public var directional_shadow_split_1: Float;
    public var directional_shadow_split_2: Float;
    public var directional_shadow_split_3: Float;
    public var shadow_bias: Float;
    @:native("__new")
    public function new();
}
