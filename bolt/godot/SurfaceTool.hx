package bolt.godot;

class SurfaceToolSignalNames {
}
@:native("godot.SurfaceTool")
extern class SurfaceTool extends Reference {
    public function addBones(bones: PoolIntArray): Void;
    public function addColor(color: Color): Void;
    public function addIndex(index: Int): Void;
    public function addNormal(normal: GdVector3): Void;
    public function addSmoothGroup(smooth: Bool): Void;
    public function addTangent(tangent: Plane): Void;
    public function addTriangleFan(vertices: PoolVector3Array, uvs: PoolVector2Array, colors: PoolColorArray, uv2s: PoolVector2Array, normals: PoolVector3Array, tangents: Array<Dynamic>): Void;
    public function addUv(uv: GdVector2): Void;
    public function addUv2(uv2: GdVector2): Void;
    public function addVertex(vertex: GdVector3): Void;
    public function addWeights(weights: PoolRealArray): Void;
    public function appendFrom(existing: Mesh, surface: Int, transform: Transform): Void;
    public function begin(primitive: Int): Void;
    public function clear(): Void;
    public function commit(existing: ArrayMesh, flags: Int = 2194432): ArrayMesh;
    public function commitToArrays(): Array<Dynamic>;
    public function createFrom(existing: Mesh, surface: Int): Void;
    public function createFromBlendShape(existing: Mesh, surface: Int, blendShape: String): Void;
    public function deindex(): Void;
    public function generateNormals(flip: Bool = false): Void;
    public function generateTangents(): Void;
    public function index(): Void;
    public function setMaterial(material: Material): Void;
    @:native("__new")
    public function new();
}
