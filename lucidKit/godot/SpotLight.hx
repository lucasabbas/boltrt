package lucidKit.godot;

class SpotLightLightBakeMode {
    public static var Disabled: Int = 0;
    public static var Indirect: Int = 1;
    public static var All: Int = 2;
}
class SpotLightPortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class SpotLightMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class SpotLightPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class SpotLightPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class SpotLightSignalNames {
}
@:native("godot.SpotLight")
extern class SpotLight extends Light {
    public var spotAngle: Float;
    public var spotAngleAttenuation: Float;
    public var spotAttenuation: Float;
    public var spotRange: Float;
    @:native("__new")
    public function new();
}
