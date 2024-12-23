package lucidKit.godot;

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
