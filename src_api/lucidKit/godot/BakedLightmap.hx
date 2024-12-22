package lucidKit.godot;

@:native("godot.BakedLightmap")
extern class BakedLightmap extends VisualInstance {
    public var atlas_generate: Bool;
    public var atlas_max_size: Int;
    public var bias: Float;
    public var bounce_indirect_energy: Float;
    public var bounces: Int;
    public var capture_cell_size: Float;
    public var capture_enabled: Bool;
    public var capture_propagation: Float;
    public var capture_quality: Int;
    public var default_texels_per_unit: Float;
    public var environment_custom_color: Color;
    public var environment_custom_energy: Float;
    public var environment_custom_sky: Sky;
    public var environment_custom_sky_rotation_degrees: Vector3;
    public var environment_min_light: Color;
    public var environment_mode: Int;
    public var extents: Vector3;
    public var image_path: String;
    public var light_data: BakedLightmapData;
    public var quality: Int;
    public var use_color: Bool;
    public var use_denoiser: Bool;
    public var use_hdr: Bool;
    public function bake(from_node: Node, data_save_path: String): Int;
    @:native("__new")
    public function new();
}
