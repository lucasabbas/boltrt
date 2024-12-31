package lucidKit.godot;

class DirectionalLightDirectionalShadowMode {
    public static var Orthogonal: Int = 0;
    public static var Parallel2Splits: Int = 1;
    public static var Parallel3Splits: Int = 2;
    public static var Parallel4Splits: Int = 3;
}
class DirectionalLightDirectionalShadowDepthRange {
    public static var Stable: Int = 0;
    public static var Optimized: Int = 1;
}
class DirectionalLightLightBakeMode {
    public static var Disabled: Int = 0;
    public static var Indirect: Int = 1;
    public static var All: Int = 2;
}
class DirectionalLightPortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class DirectionalLightMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class DirectionalLightPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class DirectionalLightPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class DirectionalLightSignalNames {
}
@:native("godot.DirectionalLight")
extern class DirectionalLight extends Light {
    public var directionalShadowBiasSplitScale: Float;
    public var directionalShadowBlendSplits: Bool;
    public var directionalShadowDepthRange: Int;
    public var directionalShadowFadeStart: Float;
    public var directionalShadowMaxDistance: Float;
    public var directionalShadowMode: Int;
    public var directionalShadowNormalBias: Float;
    public var directionalShadowSplit1: Float;
    public var directionalShadowSplit2: Float;
    public var directionalShadowSplit3: Float;
    @:native("__new")
    public function new();
}
