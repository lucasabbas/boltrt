package magicrt.godot;

class VisibilityEnabler2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class VisibilityEnabler2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class VisibilityEnabler2DSignalNames {
}
@:native("godot.VisibilityEnabler2D")
extern class VisibilityEnabler2D extends VisibilityNotifier2D {
    public var freezeBodies: Bool;
    public var pauseAnimatedSprites: Bool;
    public var pauseAnimations: Bool;
    public var pauseParticles: Bool;
    public var physicsProcessParent: Bool;
    public var processParent: Bool;
    public function isEnablerEnabled(enabler: Int): Bool;
    public function setEnabler(enabler: Int, enabled: Bool): Void;
    @:native("__new")
    public function new();
}
