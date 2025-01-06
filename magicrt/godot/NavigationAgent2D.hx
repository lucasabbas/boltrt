package magicrt.godot;

class NavigationAgent2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class NavigationAgent2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class NavigationAgent2DSignalNames {
    public static var navigationFinished: String = "navigation_finished";
    public static var pathChanged: String = "path_changed";
    public static var targetReached: String = "target_reached";
    public static var velocityComputed: String = "velocity_computed";
}
@:native("godot.NavigationAgent2D")
extern class NavigationAgent2D extends Node {
    public var avoidanceEnabled: Bool;
    public var maxNeighbors: Int;
    public var maxSpeed: Float;
    public var navigationLayers: Int;
    public var neighborDist: Float;
    public var pathDesiredDistance: Float;
    public var pathMaxDistance: Float;
    public var radius: Float;
    public var targetDesiredDistance: Float;
    public var targetLocation: Vector2;
    public var timeHorizon: Float;
    public function distanceToTarget(): Float;
    public function getFinalLocation(): Vector2;
    public function getNavPath(): PoolVector2Array;
    public function getNavPathIndex(): Int;
    public function getNavigation(): Node;
    public function getNavigationMap(): RID;
    public function getNextLocation(): Vector2;
    public function getRid(): RID;
    public function isNavigationFinished(): Bool;
    public function isTargetReachable(): Bool;
    public function isTargetReached(): Bool;
    public function setNavigation(navigation: Node): Void;
    public function setNavigationMap(navigationMap: RID): Void;
    public function setVelocity(velocity: GdVector2): Void;
    @:native("__new")
    public function new();
}
