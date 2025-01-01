package bolt.godot;

class GeometrySignalNames {
}
@:native("godot.Geometry")
extern class Geometry extends Object {
    public function buildBoxPlanes(extents: GdVector3): Array<Dynamic>;
    public function buildCapsulePlanes(radius: Float, height: Float, sides: Int, lats: Int, axis: Int = 2): Array<Dynamic>;
    public function buildCylinderPlanes(radius: Float, height: Float, sides: Int, axis: Int = 2): Array<Dynamic>;
    public function clipPolygon(points: PoolVector3Array, plane: Plane): PoolVector3Array;
    public function clipPolygons2d(polygonA: PoolVector2Array, polygonB: PoolVector2Array): Array<Dynamic>;
    public function clipPolylineWithPolygon2d(polyline: PoolVector2Array, polygon: PoolVector2Array): Array<Dynamic>;
    public function convexHull2d(points: PoolVector2Array): PoolVector2Array;
    public function excludePolygons2d(polygonA: PoolVector2Array, polygonB: PoolVector2Array): Array<Dynamic>;
    public function getClosestPointToSegment(point: GdVector3, s1: GdVector3, s2: GdVector3): Vector3;
    public function getClosestPointToSegment2d(point: GdVector2, s1: GdVector2, s2: GdVector2): Vector2;
    public function getClosestPointToSegmentUncapped(point: GdVector3, s1: GdVector3, s2: GdVector3): Vector3;
    public function getClosestPointToSegmentUncapped2d(point: GdVector2, s1: GdVector2, s2: GdVector2): Vector2;
    public function getClosestPointsBetweenSegments(p1: GdVector3, p2: GdVector3, q1: GdVector3, q2: GdVector3): PoolVector3Array;
    public function getClosestPointsBetweenSegments2d(p1: GdVector2, q1: GdVector2, p2: GdVector2, q2: GdVector2): PoolVector2Array;
    public function getUv84NormalBit(normal: GdVector3): Int;
    public function intersectPolygons2d(polygonA: PoolVector2Array, polygonB: PoolVector2Array): Array<Dynamic>;
    public function intersectPolylineWithPolygon2d(polyline: PoolVector2Array, polygon: PoolVector2Array): Array<Dynamic>;
    public function isPointInCircle(point: GdVector2, circlePosition: GdVector2, circleRadius: Float): Bool;
    public function isPointInPolygon(point: GdVector2, polygon: PoolVector2Array): Bool;
    public function isPolygonClockwise(polygon: PoolVector2Array): Bool;
    public function lineIntersectsLine2d(fromA: GdVector2, dirA: GdVector2, fromB: GdVector2, dirB: GdVector2): Variant;
    public function makeAtlas(sizes: PoolVector2Array): Map<Dynamic, Dynamic>;
    public function mergePolygons2d(polygonA: PoolVector2Array, polygonB: PoolVector2Array): Array<Dynamic>;
    public function offsetPolygon2d(polygon: PoolVector2Array, delta: Float, joinType: Int = 0): Array<Dynamic>;
    public function offsetPolyline2d(polyline: PoolVector2Array, delta: Float, joinType: Int = 0, endType: Int = 3): Array<Dynamic>;
    public function pointIsInsideTriangle(point: GdVector2, a: GdVector2, b: GdVector2, c: GdVector2): Bool;
    public function rayIntersectsTriangle(from: GdVector3, dir: GdVector3, a: GdVector3, b: GdVector3, c: GdVector3): Variant;
    public function segmentIntersectsCircle(segmentFrom: GdVector2, segmentTo: GdVector2, circlePosition: GdVector2, circleRadius: Float): Float;
    public function segmentIntersectsConvex(from: GdVector3, to: GdVector3, planes: Array<Dynamic>): PoolVector3Array;
    public function segmentIntersectsCylinder(from: GdVector3, to: GdVector3, height: Float, radius: Float): PoolVector3Array;
    public function segmentIntersectsSegment2d(fromA: GdVector2, toA: GdVector2, fromB: GdVector2, toB: GdVector2): Variant;
    public function segmentIntersectsSphere(from: GdVector3, to: GdVector3, spherePosition: GdVector3, sphereRadius: Float): PoolVector3Array;
    public function segmentIntersectsTriangle(from: GdVector3, to: GdVector3, a: GdVector3, b: GdVector3, c: GdVector3): Variant;
    public function triangulateDelaunay2d(points: PoolVector2Array): PoolIntArray;
    public function triangulatePolygon(polygon: PoolVector2Array): PoolIntArray;
    @:native("__new")
    public function new();
}
