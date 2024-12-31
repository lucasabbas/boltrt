package lucidKit.godot;

class Navigation2DServerSignalNames {
    public static var mapChanged: String = "map_changed";
}
@:native("godot.Navigation2DServer")
extern class Navigation2DServer extends Object {
    public function agentCreate(): RID;
    public function agentGetMap(agent: RID): RID;
    public function agentIsMapChanged(agent: RID): Bool;
    public function agentSetCallback(agent: RID, objectId: Int, method: String, userdata: Variant): Void;
    public function agentSetMap(agent: RID, map: RID): Void;
    public function agentSetMaxNeighbors(agent: RID, count: Int): Void;
    public function agentSetMaxSpeed(agent: RID, maxSpeed: Float): Void;
    public function agentSetNeighborDist(agent: RID, dist: Float): Void;
    public function agentSetPosition(agent: RID, position: GdVector2): Void;
    public function agentSetRadius(agent: RID, radius: Float): Void;
    public function agentSetTargetVelocity(agent: RID, targetVelocity: GdVector2): Void;
    public function agentSetTimeHorizon(agent: RID, time: Float): Void;
    public function agentSetVelocity(agent: RID, velocity: GdVector2): Void;
    public function freeRid(rid: RID): Void;
    public function getMaps(): Array<Dynamic>;
    public function mapCreate(): RID;
    public function mapForceUpdate(map: RID): Void;
    public function mapGetAgents(map: RID): Array<Dynamic>;
    public function mapGetCellHeight(map: RID): Float;
    public function mapGetCellSize(map: RID): Float;
    public function mapGetClosestPoint(map: RID, toPoint: GdVector2): Vector2;
    public function mapGetClosestPointOwner(map: RID, toPoint: GdVector2): RID;
    public function mapGetEdgeConnectionMargin(map: RID): Float;
    public function mapGetPath(map: RID, origin: GdVector2, destination: GdVector2, optimize: Bool, navigationLayers: Int = 1): PoolVector2Array;
    public function mapGetRegions(map: RID): Array<Dynamic>;
    public function mapIsActive(map: RID): Bool;
    public function mapSetActive(map: RID, active: Bool): Void;
    public function mapSetCellHeight(map: RID, cellHeight: Float): Void;
    public function mapSetCellSize(map: RID, cellSize: Float): Void;
    public function mapSetEdgeConnectionMargin(map: RID, margin: Float): Void;
    public function regionCreate(): RID;
    public function regionGetConnectionPathwayEnd(region: RID, connection: Int): Vector2;
    public function regionGetConnectionPathwayStart(region: RID, connection: Int): Vector2;
    public function regionGetConnectionsCount(region: RID): Int;
    public function regionGetEnterCost(region: RID): Float;
    public function regionGetMap(region: RID): RID;
    public function regionGetNavigationLayers(region: RID): Int;
    public function regionGetTravelCost(region: RID): Float;
    public function regionOwnsPoint(region: RID, point: GdVector2): Bool;
    public function regionSetEnterCost(region: RID, enterCost: Float): Void;
    public function regionSetMap(region: RID, map: RID): Void;
    public function regionSetNavigationLayers(region: RID, navigationLayers: Int): Void;
    public function regionSetNavpoly(region: RID, navPoly: NavigationPolygon): Void;
    public function regionSetTransform(region: RID, transform: Transform2D): Void;
    public function regionSetTravelCost(region: RID, travelCost: Float): Void;
    @:native("__new")
    public function new();
}
