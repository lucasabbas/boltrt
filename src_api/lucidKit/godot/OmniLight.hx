package lucidkit.godot;

@:native("godot.OmniLight")
extern class OmniLight extends Light {
    public var omni_attenuation: Float;
    public var omni_range: Float;
    public var omni_shadow_detail: Int;
    public var omni_shadow_mode: Int;
}
