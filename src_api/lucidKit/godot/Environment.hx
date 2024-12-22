package lucidKit.godot;

@:native("godot.Environment")
extern class Environment extends Resource {
    public var adjustment_brightness: Float;
    public var adjustment_color_correction: Texture;
    public var adjustment_contrast: Float;
    public var adjustment_enabled: Bool;
    public var adjustment_saturation: Float;
    public var ambient_light_color: Color;
    public var ambient_light_energy: Float;
    public var ambient_light_sky_contribution: Float;
    public var auto_exposure_enabled: Bool;
    public var auto_exposure_max_luma: Float;
    public var auto_exposure_min_luma: Float;
    public var auto_exposure_scale: Float;
    public var auto_exposure_speed: Float;
    public var background_camera_feed_id: Int;
    public var background_canvas_max_layer: Int;
    public var background_color: Color;
    public var background_energy: Float;
    public var background_mode: Int;
    public var background_sky: Sky;
    public var background_sky_custom_fov: Float;
    public var background_sky_orientation: Basis;
    public var background_sky_rotation: Vector3;
    public var background_sky_rotation_degrees: Vector3;
    public var dof_blur_far_amount: Float;
    public var dof_blur_far_distance: Float;
    public var dof_blur_far_enabled: Bool;
    public var dof_blur_far_quality: Int;
    public var dof_blur_far_transition: Float;
    public var dof_blur_near_amount: Float;
    public var dof_blur_near_distance: Float;
    public var dof_blur_near_enabled: Bool;
    public var dof_blur_near_quality: Int;
    public var dof_blur_near_transition: Float;
    public var fog_color: Color;
    public var fog_depth_begin: Float;
    public var fog_depth_curve: Float;
    public var fog_depth_enabled: Bool;
    public var fog_depth_end: Float;
    public var fog_enabled: Bool;
    public var fog_height_curve: Float;
    public var fog_height_enabled: Bool;
    public var fog_height_max: Float;
    public var fog_height_min: Float;
    public var fog_sun_amount: Float;
    public var fog_sun_color: Color;
    public var fog_transmit_curve: Float;
    public var fog_transmit_enabled: Bool;
    public var glow_bicubic_upscale: Bool;
    public var glow_blend_mode: Int;
    public var glow_bloom: Float;
    public var glow_enabled: Bool;
    public var glow_hdr_luminance_cap: Float;
    public var glow_hdr_scale: Float;
    public var glow_hdr_threshold: Float;
    public var glow_high_quality: Bool;
    public var glow_intensity: Float;
    public var glow_levels/1: Bool;
    public var glow_levels/2: Bool;
    public var glow_levels/3: Bool;
    public var glow_levels/4: Bool;
    public var glow_levels/5: Bool;
    public var glow_levels/6: Bool;
    public var glow_levels/7: Bool;
    public var glow_strength: Float;
    public var ss_reflections_depth_tolerance: Float;
    public var ss_reflections_enabled: Bool;
    public var ss_reflections_fade_in: Float;
    public var ss_reflections_fade_out: Float;
    public var ss_reflections_max_steps: Int;
    public var ss_reflections_roughness: Bool;
    public var ssao_ao_channel_affect: Float;
    public var ssao_bias: Float;
    public var ssao_blur: Int;
    public var ssao_color: Color;
    public var ssao_edge_sharpness: Float;
    public var ssao_enabled: Bool;
    public var ssao_intensity: Float;
    public var ssao_intensity2: Float;
    public var ssao_light_affect: Float;
    public var ssao_quality: Int;
    public var ssao_radius: Float;
    public var ssao_radius2: Float;
    public var tonemap_exposure: Float;
    public var tonemap_mode: Int;
    public var tonemap_white: Float;
    public function is_glow_level_enabled(idx: Int): Bool;
    public function set_glow_level(idx: Int, enabled: Bool): Void;
    @:native("__new")
    public function new();
}
