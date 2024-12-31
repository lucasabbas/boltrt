package lucidKit.godot;

class ParticlesMaterialEmissionShape {
    public static var Point: Int = 0;
    public static var Sphere: Int = 1;
    public static var Box: Int = 2;
    public static var Points: Int = 3;
    public static var DirectedPoints: Int = 4;
    public static var Ring: Int = 5;
    public static var Max: Int = 6;
}
class ParticlesMaterialSignalNames {
}
@:native("godot.ParticlesMaterial")
extern class ParticlesMaterial extends Material {
    public var angle: Float;
    public var angleCurve: Texture;
    public var angleRandom: Float;
    public var angularVelocity: Float;
    public var angularVelocityCurve: Texture;
    public var angularVelocityRandom: Float;
    public var animOffset: Float;
    public var animOffsetCurve: Texture;
    public var animOffsetRandom: Float;
    public var animSpeed: Float;
    public var animSpeedCurve: Texture;
    public var animSpeedRandom: Float;
    public var color: Color;
    public var colorInitialRamp: Texture;
    public var colorRamp: Texture;
    public var damping: Float;
    public var dampingCurve: Texture;
    public var dampingRandom: Float;
    public var direction: Vector3;
    public var emissionBoxExtents: Vector3;
    public var emissionColorTexture: Texture;
    public var emissionNormalTexture: Texture;
    public var emissionPointCount: Int;
    public var emissionPointTexture: Texture;
    public var emissionRingAxis: Vector3;
    public var emissionRingHeight: Float;
    public var emissionRingInnerRadius: Float;
    public var emissionRingRadius: Float;
    public var emissionShape: Int;
    public var emissionSphereRadius: Float;
    public var flagAlignY: Bool;
    public var flagDisableZ: Bool;
    public var flagRotateY: Bool;
    public var flatness: Float;
    public var gravity: Vector3;
    public var hueVariation: Float;
    public var hueVariationCurve: Texture;
    public var hueVariationRandom: Float;
    public var initialVelocity: Float;
    public var initialVelocityRandom: Float;
    public var lifetimeRandomness: Float;
    public var linearAccel: Float;
    public var linearAccelCurve: Texture;
    public var linearAccelRandom: Float;
    public var orbitVelocity: Float;
    public var orbitVelocityCurve: Texture;
    public var orbitVelocityRandom: Float;
    public var radialAccel: Float;
    public var radialAccelCurve: Texture;
    public var radialAccelRandom: Float;
    public var scale: Float;
    public var scaleCurve: Texture;
    public var scaleRandom: Float;
    public var spread: Float;
    public var tangentialAccel: Float;
    public var tangentialAccelCurve: Texture;
    public var tangentialAccelRandom: Float;
    public var trailColorModifier: GradientTexture;
    public var trailDivisor: Int;
    public var trailSizeModifier: CurveTexture;
    public function getFlag(flag: Int): Bool;
    public function getParam(param: Int): Float;
    public function getParamRandomness(param: Int): Float;
    public function getParamTexture(param: Int): Texture;
    public function setFlag(flag: Int, enable: Bool): Void;
    public function setParam(param: Int, value: Float): Void;
    public function setParamRandomness(param: Int, randomness: Float): Void;
    public function setParamTexture(param: Int, texture: Texture): Void;
    @:native("__new")
    public function new();
}
