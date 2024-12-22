package lucidKit.godot;

@:native("godot.ProceduralSky")
extern class ProceduralSky extends Sky {
    public var groundBottomColor: Color;
    public var groundCurve: Float;
    public var groundEnergy: Float;
    public var groundHorizonColor: Color;
    public var skyCurve: Float;
    public var skyEnergy: Float;
    public var skyHorizonColor: Color;
    public var skyTopColor: Color;
    public var sunAngleMax: Float;
    public var sunAngleMin: Float;
    public var sunColor: Color;
    public var sunCurve: Float;
    public var sunEnergy: Float;
    public var sunLatitude: Float;
    public var sunLongitude: Float;
    public var textureSize: Int;
    @:native("__new")
    public function new();
}
