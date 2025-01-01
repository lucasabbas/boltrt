package bolt.godot;

class PhysicsDirectSpaceStateSignalNames {
}
@:native("godot.PhysicsDirectSpaceState")
extern class PhysicsDirectSpaceState extends Object {
    public function castMotion(shape: PhysicsShapeQueryParameters, motion: GdVector3): Array<Dynamic>;
    public function collideShape(shape: PhysicsShapeQueryParameters, maxResults: Int = 32): Array<Dynamic>;
    public function getRestInfo(shape: PhysicsShapeQueryParameters): Map<Dynamic, Dynamic>;
    public function intersectPoint(point: GdVector3, maxResults: Int = 32, exclude: Array<Dynamic>, collisionLayer: Int = 2147483647, collideWithBodies: Bool = true, collideWithAreas: Bool = false): Array<Dynamic>;
    public function intersectRay(from: GdVector3, to: GdVector3, exclude: Array<Dynamic>, collisionMask: Int = 2147483647, collideWithBodies: Bool = true, collideWithAreas: Bool = false): Map<Dynamic, Dynamic>;
    public function intersectShape(shape: PhysicsShapeQueryParameters, maxResults: Int = 32): Array<Dynamic>;
    @:native("__new")
    public function new();
}
