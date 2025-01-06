package magicrt.godot;

class ParticlesDrawOrder {
    public static var Index: Int = 0;
    public static var Lifetime: Int = 1;
    public static var ViewDepth: Int = 2;
}
class ParticlesCastShadow {
    public static var Off: Int = 0;
    public static var On: Int = 1;
    public static var DoubleSided: Int = 2;
    public static var ShadowsOnly: Int = 3;
}
class ParticlesLightmapScale {
    public static var Scale1x: Int = 0;
    public static var Scale2x: Int = 1;
    public static var Scale4x: Int = 2;
    public static var Scale8x: Int = 3;
    public static var Max: Int = 4;
}
class ParticlesPortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class ParticlesMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ParticlesPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ParticlesPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ParticlesSignalNames {
    public static var finished: String = "finished";
}
@:native("godot.Particles")
extern class Particles extends GeometryInstance {
    public var amount: Int;
    public var drawOrder: Int;
    public var drawPass1: Mesh;
    public var drawPass2: Mesh;
    public var drawPass3: Mesh;
    public var drawPass4: Mesh;
    public var drawPasses: Int;
    public var emitting: Bool;
    public var explosiveness: Float;
    public var fixedFps: Int;
    public var fractDelta: Bool;
    public var lifetime: Float;
    public var localCoords: Bool;
    public var oneShot: Bool;
    public var preprocess: Float;
    public var processMaterial: Material;
    public var randomness: Float;
    public var speedScale: Float;
    public var visibilityAabb: AABB;
    public function captureAabb(): AABB;
    public function getDrawPassMesh(pass: Int): Mesh;
    public function restart(): Void;
    public function setDrawPassMesh(pass: Int, mesh: Mesh): Void;
    @:native("__new")
    public function new();
}
