package lucidKit.godot;

@:native("godot.VisibilityEnabler")
extern class VisibilityEnabler extends VisibilityNotifier {
    public var freezeBodies: Bool;
    public var pauseAnimations: Bool;
    public function isEnablerEnabled(enabler: Int): Bool;
    public function setEnabler(enabler: Int, enabled: Bool): Void;
    @:native("__new")
    public function new();
}
