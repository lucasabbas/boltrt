package lucidKit.godot;

@:native("godot.Navigation")
extern class Navigation extends Spatial {
    public var cellHeight: Float;
    public var cellSize: Float;
    public var edgeConnectionMargin: Float;
    public var navigationLayers: Int;
    public var upVector: Vector3;
    public function getClosestPoint(toPoint: GdVector3): Vector3;
    public function getClosestPointNormal(toPoint: GdVector3): Vector3;
    public function getClosestPointOwner(toPoint: GdVector3): RID;
    public function getClosestPointToSegment(start: GdVector3, end: GdVector3, useCollision: Bool = false): Vector3;
    public function getRid(): RID;
    public function getSimplePath(start: GdVector3, end: GdVector3, optimize: Bool = true): PoolVector3Array;
    @:native("__new")
    public function new();
}
