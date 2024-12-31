package lucidKit.godot;

class OmniLightOmniShadowMode {
    public static var DualParaboloid: Int = 0;
    public static var Cube: Int = 1;
}
class OmniLightOmniShadowDetail {
    public static var Vertical: Int = 0;
    public static var Horizontal: Int = 1;
}
class OmniLightLightBakeMode {
    public static var Disabled: Int = 0;
    public static var Indirect: Int = 1;
    public static var All: Int = 2;
}
class OmniLightPortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class OmniLightMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class OmniLightPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class OmniLightPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class OmniLightSignalNames {
}
@:native("godot.OmniLight")
extern class OmniLight extends Light {
    public var omniAttenuation: Float;
    public var omniRange: Float;
    public var omniShadowDetail: Int;
    public var omniShadowMode: Int;
    @:native("__new")
    public function new();
}
