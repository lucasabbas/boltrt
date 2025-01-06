package magicrt.godot;

class CPUParticles2DDrawOrder {
    public static var Index: Int = 0;
    public static var Lifetime: Int = 1;
}
class CPUParticles2DEmissionShape {
    public static var Point: Int = 0;
    public static var Sphere: Int = 1;
    public static var Rectangle: Int = 2;
    public static var Points: Int = 3;
    public static var DirectedPoints: Int = 4;
    public static var Max: Int = 5;
}
class CPUParticles2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class CPUParticles2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class CPUParticles2DSignalNames {
}
@:native("godot.CPUParticles2D")
extern class CPUParticles2D extends Node2D {
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
    public var direction: Vector2;
    public var drawOrder: Int;
    public var emissionColors: PoolColorArray;
    public var emissionNormals: PoolVector2Array;
    public var emissionPoints: PoolVector2Array;
    public var emissionRectExtents: Vector2;
    public var emissionShape: Int;
    public var emissionSphereRadius: Float;
    public var emitting: Bool;
    public var explosiveness: Float;
    public var fixedFps: Int;
    public var flagAlignY: Bool;
    public var fractDelta: Bool;
    public var gravity: Vector2;
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
    public var normalmap: Texture;
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
    public var texture: Texture;
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
