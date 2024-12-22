package lucidKit.godot;

@:native("godot.NavigationAgent")
extern class NavigationAgent extends Node {
    public var agentHeightOffset: Float;
    public var avoidanceEnabled: Bool;
    public var ignoreY: Bool;
    public var maxNeighbors: Int;
    public var maxSpeed: Float;
    public var navigationLayers: Int;
    public var neighborDist: Float;
    public var pathDesiredDistance: Float;
    public var pathMaxDistance: Float;
    public var radius: Float;
    public var targetDesiredDistance: Float;
    public var targetLocation: Vector3;
    public var timeHorizon: Float;
    public function distanceToTarget(): Float;
    public function getFinalLocation(): Vector3;
    public function getNavPath(): PoolVector3Array;
    public function getNavPathIndex(): Int;
    public function getNavigation(): Node;
    public function getNavigationMap(): RID;
    public function getNextLocation(): Vector3;
    public function getRid(): RID;
    public function isNavigationFinished(): Bool;
    public function isTargetReachable(): Bool;
    public function isTargetReached(): Bool;
    public function setNavigation(navigation: Node): Void;
    public function setNavigationMap(navigationMap: RID): Void;
    public function setVelocity(velocity: GdVector3): Void;
    @:native("__new")
    public function new();
}
