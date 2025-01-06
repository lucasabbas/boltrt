package magicrt.godot;

class Physics2DDirectSpaceStateSignalNames {
}
@:native("godot.Physics2DDirectSpaceState")
extern class Physics2DDirectSpaceState extends Object {
    public function castMotion(shape: Physics2DShapeQueryParameters): Array<Dynamic>;
    public function collideShape(shape: Physics2DShapeQueryParameters, maxResults: Int = 32): Array<Dynamic>;
    public function getRestInfo(shape: Physics2DShapeQueryParameters): Map<Dynamic, Dynamic>;
    public function intersectPoint(point: GdVector2, maxResults: Int = 32, exclude: Array<Dynamic>, collisionLayer: Int = 2147483647, collideWithBodies: Bool = true, collideWithAreas: Bool = false): Array<Dynamic>;
    public function intersectPointOnCanvas(point: GdVector2, canvasInstanceId: Int, maxResults: Int = 32, exclude: Array<Dynamic>, collisionLayer: Int = 2147483647, collideWithBodies: Bool = true, collideWithAreas: Bool = false): Array<Dynamic>;
    public function intersectRay(from: GdVector2, to: GdVector2, exclude: Array<Dynamic>, collisionLayer: Int = 2147483647, collideWithBodies: Bool = true, collideWithAreas: Bool = false): Map<Dynamic, Dynamic>;
    public function intersectShape(shape: Physics2DShapeQueryParameters, maxResults: Int = 32): Array<Dynamic>;
    @:native("__new")
    public function new();
}
