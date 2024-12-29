package lucidKit.godot;

@:native("godot.AABB")
extern class AABB extends lucidKit.core.MonoObject {
    public var end: Vector3;
    public var position: Vector3;
    public var size: Vector3;
    @:native("__new")
    public function new(position: GdVector3, size: GdVector3);
    public function abs(): AABB;
    public function encloses(with: AABB): Bool;
    public function expand(toPoint: GdVector3): AABB;
    public function getArea(): Float;
    public function getCenter(): Vector3;
    public function getEndpoint(idx: Int): Vector3;
    public function getLongestAxis(): Vector3;
    public function getLongestAxisIndex(): Int;
    public function getLongestAxisSize(): Float;
    public function getShortestAxis(): Vector3;
    public function getShortestAxisIndex(): Int;
    public function getShortestAxisSize(): Float;
    public function getSupport(dir: GdVector3): Vector3;
    public function grow(by: Float): AABB;
    public function hasNoArea(): Bool;
    public function hasNoSurface(): Bool;
    public function hasPoint(point: GdVector3): Bool;
    public function intersection(with: AABB): AABB;
    public function intersects(with: AABB): Bool;
    public function intersectsPlane(plane: Plane): Bool;
    public function intersectsSegment(from: GdVector3, to: GdVector3): Bool;
    public function isEqualApprox(aabb: AABB): Bool;
    public function merge(with: AABB): AABB;
}
