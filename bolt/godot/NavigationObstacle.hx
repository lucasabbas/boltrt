package bolt.godot;

class NavigationObstaclePauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class NavigationObstaclePhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class NavigationObstacleSignalNames {
}
@:native("godot.NavigationObstacle")
extern class NavigationObstacle extends Node {
    public var estimateRadius: Bool;
    public var radius: Float;
    public function getNavigation(): Node;
    public function getRid(): RID;
    public function setNavigation(navigation: Node): Void;
    @:native("__new")
    public function new();
}
