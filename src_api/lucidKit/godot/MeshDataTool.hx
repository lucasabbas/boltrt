package lucidkit.godot;

@:native("godot.MeshDataTool")
extern class MeshDataTool extends Reference {
    public function clear(): Void;
    public function commit_to_surface(mesh: ArrayMesh): Int;
    public function create_from_surface(mesh: ArrayMesh, surface: Int): Int;
    public function get_edge_count(): Int;
    public function get_edge_faces(idx: Int): PoolIntArray;
    public function get_edge_meta(idx: Int): Variant;
    public function get_edge_vertex(idx: Int, vertex: Int): Int;
    public function get_face_count(): Int;
    public function get_face_edge(idx: Int, edge: Int): Int;
    public function get_face_meta(idx: Int): Variant;
    public function get_face_normal(idx: Int): Vector3;
    public function get_face_vertex(idx: Int, vertex: Int): Int;
    public function get_format(): Int;
    public function get_material(): Material;
    public function get_vertex(idx: Int): Vector3;
    public function get_vertex_bones(idx: Int): PoolIntArray;
    public function get_vertex_color(idx: Int): Color;
    public function get_vertex_count(): Int;
    public function get_vertex_edges(idx: Int): PoolIntArray;
    public function get_vertex_faces(idx: Int): PoolIntArray;
    public function get_vertex_meta(idx: Int): Variant;
    public function get_vertex_normal(idx: Int): Vector3;
    public function get_vertex_tangent(idx: Int): Plane;
    public function get_vertex_uv(idx: Int): Vector2;
    public function get_vertex_uv2(idx: Int): Vector2;
    public function get_vertex_weights(idx: Int): PoolRealArray;
    public function set_edge_meta(idx: Int, meta: Variant): Void;
    public function set_face_meta(idx: Int, meta: Variant): Void;
    public function set_material(material: Material): Void;
    public function set_vertex(idx: Int, vertex: GdVector3): Void;
    public function set_vertex_bones(idx: Int, bones: PoolIntArray): Void;
    public function set_vertex_color(idx: Int, color: Color): Void;
    public function set_vertex_meta(idx: Int, meta: Variant): Void;
    public function set_vertex_normal(idx: Int, normal: GdVector3): Void;
    public function set_vertex_tangent(idx: Int, tangent: Plane): Void;
    public function set_vertex_uv(idx: Int, uv: GdVector2): Void;
    public function set_vertex_uv2(idx: Int, uv2: GdVector2): Void;
    public function set_vertex_weights(idx: Int, weights: PoolRealArray): Void;
}
