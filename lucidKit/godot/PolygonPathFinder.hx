package lucidKit.godot;

class PolygonPathFinderSignalNames {
}
@:native("godot.PolygonPathFinder")
extern class PolygonPathFinder extends Resource {
    public function findPath(from: GdVector2, to: GdVector2): PoolVector2Array;
    public function getBounds(): Rect2;
    public function getClosestPoint(point: GdVector2): Vector2;
    public function getIntersections(from: GdVector2, to: GdVector2): PoolVector2Array;
    public function getPointPenalty(idx: Int): Float;
    public function isPointInside(point: GdVector2): Bool;
    public function setPointPenalty(idx: Int, penalty: Float): Void;
    public function setup(points: PoolVector2Array, connections: PoolIntArray): Void;
    @:native("__new")
    public function new();
}
