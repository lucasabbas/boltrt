package magicrt.godot;

class Particles2DDrawOrder {
    public static var Index: Int = 0;
    public static var Lifetime: Int = 1;
}
class Particles2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class Particles2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Particles2DSignalNames {
    public static var finished: String = "finished";
}
@:native("godot.Particles2D")
extern class Particles2D extends Node2D {
    public var amount: Int;
    public var drawOrder: Int;
    public var emitting: Bool;
    public var explosiveness: Float;
    public var fixedFps: Int;
    public var fractDelta: Bool;
    public var lifetime: Float;
    public var localCoords: Bool;
    public var normalMap: Texture;
    public var oneShot: Bool;
    public var preprocess: Float;
    public var processMaterial: Material;
    public var randomness: Float;
    public var speedScale: Float;
    public var texture: Texture;
    public var visibilityRect: Rect2;
    public function captureRect(): Rect2;
    public function restart(): Void;
    @:native("__new")
    public function new();
}
