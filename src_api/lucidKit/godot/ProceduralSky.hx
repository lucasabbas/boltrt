package lucidkit.godot;

@:native("godot.ProceduralSky")
extern class ProceduralSky extends Sky {
    public var ground_bottom_color: Color;
    public var ground_curve: Float;
    public var ground_energy: Float;
    public var ground_horizon_color: Color;
    public var sky_curve: Float;
    public var sky_energy: Float;
    public var sky_horizon_color: Color;
    public var sky_top_color: Color;
    public var sun_angle_max: Float;
    public var sun_angle_min: Float;
    public var sun_color: Color;
    public var sun_curve: Float;
    public var sun_energy: Float;
    public var sun_latitude: Float;
    public var sun_longitude: Float;
    public var texture_size: Int;
}
