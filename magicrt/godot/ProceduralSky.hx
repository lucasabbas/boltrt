package magicrt.godot;

class ProceduralSkyTextureSize {
    public static var Size256: Int = 0;
    public static var Size512: Int = 1;
    public static var Size1024: Int = 2;
    public static var Size2048: Int = 3;
    public static var Size4096: Int = 4;
    public static var Max: Int = 5;
}
class ProceduralSkyRadianceSize {
    public static var Size32: Int = 0;
    public static var Size64: Int = 1;
    public static var Size128: Int = 2;
    public static var Size256: Int = 3;
    public static var Size512: Int = 4;
    public static var Size1024: Int = 5;
    public static var Size2048: Int = 6;
    public static var Max: Int = 7;
}
class ProceduralSkySignalNames {
}
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
