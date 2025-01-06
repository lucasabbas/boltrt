package magicrt.godot;

class BakedLightmapQuality {
    public static var Low: Int = 0;
    public static var Medium: Int = 1;
    public static var High: Int = 2;
    public static var Ultra: Int = 3;
}
class BakedLightmapEnvironmentMode {
    public static var Disabled: Int = 0;
    public static var Scene: Int = 1;
    public static var CustomSky: Int = 2;
    public static var CustomColor: Int = 3;
}
class BakedLightmapCaptureQuality {
    public static var Low: Int = 0;
    public static var Medium: Int = 1;
    public static var High: Int = 2;
    public static var Ultra: Int = 3;
}
class BakedLightmapPortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class BakedLightmapMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class BakedLightmapPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class BakedLightmapPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class BakedLightmapSignalNames {
}
@:native("godot.BakedLightmap")
extern class BakedLightmap extends VisualInstance {
    public var atlasGenerate: Bool;
    public var atlasMaxSize: Int;
    public var bias: Float;
    public var bounceIndirectEnergy: Float;
    public var bounces: Int;
    public var captureCellSize: Float;
    public var captureEnabled: Bool;
    public var capturePropagation: Float;
    public var captureQuality: Int;
    public var defaultTexelsPerUnit: Float;
    public var environmentCustomColor: Color;
    public var environmentCustomEnergy: Float;
    public var environmentCustomSky: Sky;
    public var environmentCustomSkyRotationDegrees: Vector3;
    public var environmentMinLight: Color;
    public var environmentMode: Int;
    public var extents: Vector3;
    public var imagePath: String;
    public var lightData: BakedLightmapData;
    public var quality: Int;
    public var useColor: Bool;
    public var useDenoiser: Bool;
    public var useHdr: Bool;
    public function bake(fromNode: Node, dataSavePath: String): Int;
    @:native("__new")
    public function new();
}
