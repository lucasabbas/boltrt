package lucidKit.godot;

class MeshSignalNames {
}
@:native("godot.Mesh")
extern class Mesh extends Resource {
    public var lightmapSizeHint: Vector2;
    public function createConvexShape(clean: Bool = true, simplify: Bool = false): Shape;
    public function createOutline(margin: Float): Mesh;
    public function createTrimeshShape(): Shape;
    public function generateTriangleMesh(): TriangleMesh;
    public function getAabb(): AABB;
    public function getFaces(): PoolVector3Array;
    public function getSurfaceCount(): Int;
    public function surfaceGetArrays(surfIdx: Int): Array<Dynamic>;
    public function surfaceGetBlendShapeArrays(surfIdx: Int): Array<Dynamic>;
    public function surfaceGetMaterial(surfIdx: Int): Material;
    public function surfaceSetMaterial(surfIdx: Int, material: Material): Void;
    @:native("__new")
    public function new();
}
