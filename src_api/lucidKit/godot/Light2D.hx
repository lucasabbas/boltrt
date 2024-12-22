package lucidkit.godot;

@:native("godot.Light2D")
extern class Light2D extends Node2D {
    public var color: Color;
    public var editor_only: Bool;
    public var enabled: Bool;
    public var energy: Float;
    public var mode: Int;
    public var offset: Vector2;
    public var range_height: Float;
    public var range_item_cull_mask: Int;
    public var range_layer_max: Int;
    public var range_layer_min: Int;
    public var range_z_max: Int;
    public var range_z_min: Int;
    public var shadow_buffer_size: Int;
    public var shadow_color: Color;
    public var shadow_enabled: Bool;
    public var shadow_filter: Int;
    public var shadow_filter_smooth: Float;
    public var shadow_gradient_length: Float;
    public var shadow_item_cull_mask: Int;
    public var texture: Texture;
    public var texture_scale: Float;
}
