package lucidKit.godot;

class EnvironmentBackgroundMode {
    public static var ClearColor: Int = 0;
    public static var Color: Int = 1;
    public static var Sky: Int = 2;
    public static var ColorSky: Int = 3;
    public static var Canvas: Int = 4;
    public static var Keep: Int = 5;
    public static var CameraFeed: Int = 6;
    public static var Max: Int = 7;
}
class EnvironmentTonemapMode {
    public static var Linear: Int = 0;
    public static var Reinhardt: Int = 1;
    public static var Filmic: Int = 2;
    public static var Aces: Int = 3;
    public static var AcesFitted: Int = 4;
}
class EnvironmentSsaoQuality {
    public static var Low: Int = 0;
    public static var Medium: Int = 1;
    public static var High: Int = 2;
}
class EnvironmentSsaoBlur {
    public static var Disabled: Int = 0;
    public static var Blur1x1: Int = 1;
    public static var Blur2x2: Int = 2;
    public static var Blur3x3: Int = 3;
}
class EnvironmentDofBlurFarQuality {
    public static var Low: Int = 0;
    public static var Medium: Int = 1;
    public static var High: Int = 2;
}
class EnvironmentDofBlurNearQuality {
    public static var Low: Int = 0;
    public static var Medium: Int = 1;
    public static var High: Int = 2;
}
class EnvironmentGlowBlendMode {
    public static var Additive: Int = 0;
    public static var Screen: Int = 1;
    public static var Softlight: Int = 2;
    public static var Replace: Int = 3;
}
class EnvironmentSignalNames {
}
@:native("godot.Environment")
extern class Environment extends Resource {
    public var adjustmentBrightness: Float;
    public var adjustmentColorCorrection: Texture;
    public var adjustmentContrast: Float;
    public var adjustmentEnabled: Bool;
    public var adjustmentSaturation: Float;
    public var ambientLightColor: Color;
    public var ambientLightEnergy: Float;
    public var ambientLightSkyContribution: Float;
    public var autoExposureEnabled: Bool;
    public var autoExposureMaxLuma: Float;
    public var autoExposureMinLuma: Float;
    public var autoExposureScale: Float;
    public var autoExposureSpeed: Float;
    public var backgroundCameraFeedId: Int;
    public var backgroundCanvasMaxLayer: Int;
    public var backgroundColor: Color;
    public var backgroundEnergy: Float;
    public var backgroundMode: Int;
    public var backgroundSky: Sky;
    public var backgroundSkyCustomFov: Float;
    public var backgroundSkyOrientation: Basis;
    public var backgroundSkyRotation: Vector3;
    public var backgroundSkyRotationDegrees: Vector3;
    public var dofBlurFarAmount: Float;
    public var dofBlurFarDistance: Float;
    public var dofBlurFarEnabled: Bool;
    public var dofBlurFarQuality: Int;
    public var dofBlurFarTransition: Float;
    public var dofBlurNearAmount: Float;
    public var dofBlurNearDistance: Float;
    public var dofBlurNearEnabled: Bool;
    public var dofBlurNearQuality: Int;
    public var dofBlurNearTransition: Float;
    public var fogColor: Color;
    public var fogDepthBegin: Float;
    public var fogDepthCurve: Float;
    public var fogDepthEnabled: Bool;
    public var fogDepthEnd: Float;
    public var fogEnabled: Bool;
    public var fogHeightCurve: Float;
    public var fogHeightEnabled: Bool;
    public var fogHeightMax: Float;
    public var fogHeightMin: Float;
    public var fogSunAmount: Float;
    public var fogSunColor: Color;
    public var fogTransmitCurve: Float;
    public var fogTransmitEnabled: Bool;
    public var glowBicubicUpscale: Bool;
    public var glowBlendMode: Int;
    public var glowBloom: Float;
    public var glowEnabled: Bool;
    public var glowHdrLuminanceCap: Float;
    public var glowHdrScale: Float;
    public var glowHdrThreshold: Float;
    public var glowHighQuality: Bool;
    public var glowIntensity: Float;
    public var glowLevels1: Bool;
    public var glowLevels2: Bool;
    public var glowLevels3: Bool;
    public var glowLevels4: Bool;
    public var glowLevels5: Bool;
    public var glowLevels6: Bool;
    public var glowLevels7: Bool;
    public var glowStrength: Float;
    public var ssReflectionsDepthTolerance: Float;
    public var ssReflectionsEnabled: Bool;
    public var ssReflectionsFadeIn: Float;
    public var ssReflectionsFadeOut: Float;
    public var ssReflectionsMaxSteps: Int;
    public var ssReflectionsRoughness: Bool;
    public var ssaoAoChannelAffect: Float;
    public var ssaoBias: Float;
    public var ssaoBlur: Int;
    public var ssaoColor: Color;
    public var ssaoEdgeSharpness: Float;
    public var ssaoEnabled: Bool;
    public var ssaoIntensity: Float;
    public var ssaoIntensity2: Float;
    public var ssaoLightAffect: Float;
    public var ssaoQuality: Int;
    public var ssaoRadius: Float;
    public var ssaoRadius2: Float;
    public var tonemapExposure: Float;
    public var tonemapMode: Int;
    public var tonemapWhite: Float;
    public function isGlowLevelEnabled(idx: Int): Bool;
    public function setGlowLevel(idx: Int, enabled: Bool): Void;
    @:native("__new")
    public function new();
}
