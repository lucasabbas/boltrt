package lucidKit.godot;

class NavigationObstacle2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class NavigationObstacle2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class NavigationObstacle2DSignalNames {
}
@:native("godot.NavigationObstacle2D")
extern class NavigationObstacle2D extends Node {
    public var estimateRadius: Bool;
    public var radius: Float;
    public function getNavigation(): Node;
    public function getRid(): RID;
    public function setNavigation(navigation: Node): Void;
    @:native("__new")
    public function new();
}
