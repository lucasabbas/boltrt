package lucidkit.godot;

@:native("godot.SpotLight")
extern class SpotLight extends Light {
    public var spot_angle: Float;
    public var spot_angle_attenuation: Float;
    public var spot_attenuation: Float;
    public var spot_range: Float;
}
