package lucidKit.godot;

class VisibilityNotifierPortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class VisibilityNotifierMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class VisibilityNotifierPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class VisibilityNotifierPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class VisibilityNotifierSignalNames {
    public static var cameraEntered: String = "camera_entered";
    public static var cameraExited: String = "camera_exited";
    public static var screenEntered: String = "screen_entered";
    public static var screenExited: String = "screen_exited";
}
@:native("godot.VisibilityNotifier")
extern class VisibilityNotifier extends CullInstance {
    public var aabb: AABB;
    public var maxDistance: Float;
    public function isOnScreen(): Bool;
    @:native("__new")
    public function new();
}
