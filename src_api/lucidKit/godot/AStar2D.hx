package lucidKit.godot;

@:native("godot.AStar2D")
extern class AStar2D extends Reference {
    public function ComputeCost(fromId: Int, toId: Int): Float;
    public function EstimateCost(fromId: Int, toId: Int): Float;
    public function addPoint(id: Int, position: GdVector2, weightScale: Float = 1.0): Void;
    public function arePointsConnected(id: Int, toId: Int, bidirectional: Bool = true): Bool;
    public function clear(): Void;
    public function connectPoints(id: Int, toId: Int, bidirectional: Bool = true): Void;
    public function disconnectPoints(id: Int, toId: Int, bidirectional: Bool = true): Void;
    public function getAvailablePointId(): Int;
    public function getClosestPoint(toPosition: GdVector2, includeDisabled: Bool = false): Int;
    public function getClosestPositionInSegment(toPosition: GdVector2): Vector2;
    public function getIdPath(fromId: Int, toId: Int): PoolIntArray;
    public function getPointCapacity(): Int;
    public function getPointConnections(id: Int): PoolIntArray;
    public function getPointCount(): Int;
    public function getPointPath(fromId: Int, toId: Int): PoolVector2Array;
    public function getPointPosition(id: Int): Vector2;
    public function getPointWeightScale(id: Int): Float;
    public function getPoints(): Array<Dynamic>;
    public function hasPoint(id: Int): Bool;
    public function isPointDisabled(id: Int): Bool;
    public function removePoint(id: Int): Void;
    public function reserveSpace(numNodes: Int): Void;
    public function setPointDisabled(id: Int, disabled: Bool = true): Void;
    public function setPointPosition(id: Int, position: GdVector2): Void;
    public function setPointWeightScale(id: Int, weightScale: Float): Void;
    @:native("__new")
    public function new();
}
