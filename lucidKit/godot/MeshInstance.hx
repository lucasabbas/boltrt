package lucidKit.godot;

@:native("godot.MeshInstance")
extern class MeshInstance extends GeometryInstance {
    public var mesh: Mesh;
    public var skeleton: NodePath;
    public var skin: Skin;
    public var softwareSkinningTransformNormals: Bool;
    public function createConvexCollision(clean: Bool = true, simplify: Bool = false): Void;
    public function createDebugTangents(): Void;
    public function createMultipleConvexCollisions(): Void;
    public function createTrimeshCollision(): Void;
    public function getActiveMaterial(surface: Int): Material;
    public function getSurfaceMaterial(surface: Int): Material;
    public function getSurfaceMaterialCount(): Int;
    public function isMergeableWith(otherMeshInstance: Node, shadowsOnly: Bool = false): Bool;
    public function mergeMeshes(meshInstances: Array<Dynamic>, useGlobalSpace: Bool = false, checkCompatibility: Bool = true, shadowsOnly: Bool = false): Bool;
    public function setSurfaceMaterial(surface: Int, material: Material): Void;
    @:native("__new")
    public function new();
}
