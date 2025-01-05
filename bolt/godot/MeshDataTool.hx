package bolt.godot;

class MeshDataToolSignalNames {
}
@:native("godot.MeshDataTool")
extern class MeshDataTool extends Reference {
    public function clear(): Void;
    public function commitToSurface(mesh: ArrayMesh): Int;
    public function createFromSurface(mesh: ArrayMesh, surface: Int): Int;
    public function getEdgeCount(): Int;
    public function getEdgeFaces(idx: Int): PoolIntArray;
    public function getEdgeMeta(idx: Int): Dynamic;
    public function getEdgeVertex(idx: Int, vertex: Int): Int;
    public function getFaceCount(): Int;
    public function getFaceEdge(idx: Int, edge: Int): Int;
    public function getFaceMeta(idx: Int): Dynamic;
    public function getFaceNormal(idx: Int): Vector3;
    public function getFaceVertex(idx: Int, vertex: Int): Int;
    public function getFormat(): Int;
    public function getMaterial(): Material;
    public function getVertex(idx: Int): Vector3;
    public function getVertexBones(idx: Int): PoolIntArray;
    public function getVertexColor(idx: Int): Color;
    public function getVertexCount(): Int;
    public function getVertexEdges(idx: Int): PoolIntArray;
    public function getVertexFaces(idx: Int): PoolIntArray;
    public function getVertexMeta(idx: Int): Dynamic;
    public function getVertexNormal(idx: Int): Vector3;
    public function getVertexTangent(idx: Int): Plane;
    public function getVertexUv(idx: Int): Vector2;
    public function getVertexUv2(idx: Int): Vector2;
    public function getVertexWeights(idx: Int): PoolRealArray;
    public function setEdgeMeta(idx: Int, meta: Dynamic): Void;
    public function setFaceMeta(idx: Int, meta: Dynamic): Void;
    public function setMaterial(material: Material): Void;
    public function setVertex(idx: Int, vertex: GdVector3): Void;
    public function setVertexBones(idx: Int, bones: PoolIntArray): Void;
    public function setVertexColor(idx: Int, color: Color): Void;
    public function setVertexMeta(idx: Int, meta: Dynamic): Void;
    public function setVertexNormal(idx: Int, normal: GdVector3): Void;
    public function setVertexTangent(idx: Int, tangent: Plane): Void;
    public function setVertexUv(idx: Int, uv: GdVector2): Void;
    public function setVertexUv2(idx: Int, uv2: GdVector2): Void;
    public function setVertexWeights(idx: Int, weights: PoolRealArray): Void;
    @:native("__new")
    public function new();
}
