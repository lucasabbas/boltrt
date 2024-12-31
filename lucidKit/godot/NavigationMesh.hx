package lucidKit.godot;

class NavigationMeshSamplePartitionType {
    public static var Watershed: Int = 0;
    public static var Monotone: Int = 1;
    public static var Layers: Int = 2;
    public static var Max: Int = 3;
}
class NavigationMeshGeometryParsedGeometryType {
    public static var MeshInstances: Int = 0;
    public static var StaticColliders: Int = 1;
    public static var Both: Int = 2;
    public static var Max: Int = 3;
}
class NavigationMeshGeometrySourceGeometryMode {
    public static var NavmeshChildren: Int = 0;
    public static var GroupsWithChildren: Int = 1;
    public static var GroupsExplicit: Int = 2;
    public static var Max: Int = 3;
}
class NavigationMeshSignalNames {
}
@:native("godot.NavigationMesh")
extern class NavigationMesh extends Resource {
    public var agentHeight: Float;
    public var agentMaxClimb: Float;
    public var agentMaxSlope: Float;
    public var agentRadius: Float;
    public var cellHeight: Float;
    public var cellSize: Float;
    public var detailSampleDistance: Float;
    public var detailSampleMaxError: Float;
    public var edgeMaxError: Float;
    public var edgeMaxLength: Float;
    public var filterBakingAabb: AABB;
    public var filterBakingAabbOffset: Vector3;
    public var filterLedgeSpans: Bool;
    public var filterLowHangingObstacles: Bool;
    public var filterWalkableLowHeightSpans: Bool;
    public var geometryCollisionMask: Int;
    public var geometryParsedGeometryType: Int;
    public var geometrySourceGeometryMode: Int;
    public var geometrySourceGroupName: String;
    public var polygonVertsPerPoly: Float;
    public var regionMergeSize: Float;
    public var regionMinSize: Float;
    public var samplePartitionType: Int;
    public function addPolygon(polygon: PoolIntArray): Void;
    public function clearPolygons(): Void;
    public function createFromMesh(mesh: Mesh): Void;
    public function getCollisionMaskBit(bit: Int): Bool;
    public function getPolygon(idx: Int): PoolIntArray;
    public function getPolygonCount(): Int;
    public function getVertices(): PoolVector3Array;
    public function setCollisionMaskBit(bit: Int, value: Bool): Void;
    public function setVertices(vertices: PoolVector3Array): Void;
    @:native("__new")
    public function new();
}
