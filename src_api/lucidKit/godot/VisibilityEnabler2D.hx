package lucidKit.godot;

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
