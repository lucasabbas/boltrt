package lucidKit.godot;

class VisibilityNotifier2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class VisibilityNotifier2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class VisibilityNotifier2DSignalNames {
    public static var screenEntered: String = "screen_entered";
    public static var screenExited: String = "screen_exited";
    public static var viewportEntered: String = "viewport_entered";
    public static var viewportExited: String = "viewport_exited";
}
@:native("godot.VisibilityNotifier2D")
extern class VisibilityNotifier2D extends Node2D {
    public var rect: Rect2;
    public function isOnScreen(): Bool;
    @:native("__new")
    public function new();
}
