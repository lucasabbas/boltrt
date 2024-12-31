package lucidKit.godot;

class CPUParticlesDrawOrder {
    public static var Index: Int = 0;
    public static var Lifetime: Int = 1;
    public static var ViewDepth: Int = 2;
}
class CPUParticlesEmissionShape {
    public static var Point: Int = 0;
    public static var Sphere: Int = 1;
    public static var Box: Int = 2;
    public static var Points: Int = 3;
    public static var DirectedPoints: Int = 4;
    public static var Ring: Int = 5;
    public static var Max: Int = 6;
}
class CPUParticlesCastShadow {
    public static var Off: Int = 0;
    public static var On: Int = 1;
    public static var DoubleSided: Int = 2;
    public static var ShadowsOnly: Int = 3;
}
class CPUParticlesLightmapScale {
    public static var Scale1x: Int = 0;
    public static var Scale2x: Int = 1;
    public static var Scale4x: Int = 2;
    public static var Scale8x: Int = 3;
    public static var Max: Int = 4;
}
class CPUParticlesPortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class CPUParticlesMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class CPUParticlesPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class CPUParticlesPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class CPUParticlesSignalNames {
}
@:native("godot.CPUParticles")
extern class CPUParticles extends GeometryInstance {
    public var amount: Int;
    public var angle: Float;
    public var angleCurve: Curve;
    public var angleRandom: Float;
    public var angularVelocity: Float;
    public var angularVelocityCurve: Curve;
    public var angularVelocityRandom: Float;
    public var animOffset: Float;
    public var animOffsetCurve: Curve;
    public var animOffsetRandom: Float;
    public var animSpeed: Float;
    public var animSpeedCurve: Curve;
    public var animSpeedRandom: Float;
    public var color: Color;
    public var colorInitialRamp: Gradient;
    public var colorRamp: Gradient;
    public var damping: Float;
    public var dampingCurve: Curve;
    public var dampingRandom: Float;
    public var direction: Vector3;
    public var drawOrder: Int;
    public var emissionBoxExtents: Vector3;
    public var emissionColors: PoolColorArray;
    public var emissionNormals: PoolVector3Array;
    public var emissionPoints: PoolVector3Array;
    public var emissionRingAxis: Vector3;
    public var emissionRingHeight: Float;
    public var emissionRingInnerRadius: Float;
    public var emissionRingRadius: Float;
    public var emissionShape: Int;
    public var emissionSphereRadius: Float;
    public var emitting: Bool;
    public var explosiveness: Float;
    public var fixedFps: Int;
    public var flagAlignY: Bool;
    public var flagDisableZ: Bool;
    public var flagRotateY: Bool;
    public var flatness: Float;
    public var fractDelta: Bool;
    public var gravity: Vector3;
    public var hueVariation: Float;
    public var hueVariationCurve: Curve;
    public var hueVariationRandom: Float;
    public var initialVelocity: Float;
    public var initialVelocityRandom: Float;
    public var lifetime: Float;
    public var lifetimeRandomness: Float;
    public var linearAccel: Float;
    public var linearAccelCurve: Curve;
    public var linearAccelRandom: Float;
    public var localCoords: Bool;
    public var mesh: Mesh;
    public var oneShot: Bool;
    public var orbitVelocity: Float;
    public var orbitVelocityCurve: Curve;
    public var orbitVelocityRandom: Float;
    public var preprocess: Float;
    public var radialAccel: Float;
    public var radialAccelCurve: Curve;
    public var radialAccelRandom: Float;
    public var randomness: Float;
    public var scaleAmount: Float;
    public var scaleAmountCurve: Curve;
    public var scaleAmountRandom: Float;
    public var speedScale: Float;
    public var spread: Float;
    public var tangentialAccel: Float;
    public var tangentialAccelCurve: Curve;
    public var tangentialAccelRandom: Float;
    public function convertFromParticles(particles: Node): Void;
    public function getParam(param: Int): Float;
    public function getParamCurve(param: Int): Curve;
    public function getParamRandomness(param: Int): Float;
    public function getParticleFlag(flag: Int): Bool;
    public function restart(): Void;
    public function setParam(param: Int, value: Float): Void;
    public function setParamCurve(param: Int, curve: Curve): Void;
    public function setParamRandomness(param: Int, randomness: Float): Void;
    public function setParticleFlag(flag: Int, enable: Bool): Void;
    @:native("__new")
    public function new();
}
