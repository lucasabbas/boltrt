package lucidkit.godot;

@:native("godot.GeometryInstance")
extern class GeometryInstance extends VisualInstance {
    public var cast_shadow: Int;
    public var extra_cull_margin: Float;
    public var generate_lightmap: Bool;
    public var lightmap_scale: Int;
    public var material_overlay: Material;
    public var material_override: Material;
    public var use_in_baked_light: Bool;
    public function get_flag(flag: Int): Bool;
    public function set_custom_aabb(aabb: AABB): Void;
    public function set_flag(flag: Int, value: Bool): Void;
}
