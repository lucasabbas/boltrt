package magicrt.godot;

class VisibilityEnablerPortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class VisibilityEnablerMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class VisibilityEnablerPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class VisibilityEnablerPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class VisibilityEnablerSignalNames {
}
@:native("godot.VisibilityEnabler")
extern class VisibilityEnabler extends VisibilityNotifier {
    public var freezeBodies: Bool;
    public var pauseAnimations: Bool;
    public function isEnablerEnabled(enabler: Int): Bool;
    public function setEnabler(enabler: Int, enabled: Bool): Void;
    @:native("__new")
    public function new();
}
