package lucidkit.godot;

@:native("godot.SurfaceTool")
extern class SurfaceTool extends Reference {
    public function add_bones(bones: PoolIntArray): Void;
    public function add_color(color: Color): Void;
    public function add_index(index: Int): Void;
    public function add_normal(normal: GdVector3): Void;
    public function add_smooth_group(smooth: Bool): Void;
    public function add_tangent(tangent: Plane): Void;
    public function add_triangle_fan(vertices: PoolVector3Array, uvs: PoolVector2Array, colors: PoolColorArray, uv2s: PoolVector2Array, normals: PoolVector3Array, tangents: Array<Dynamic>): Void;
    public function add_uv(uv: GdVector2): Void;
    public function add_uv2(uv2: GdVector2): Void;
    public function add_vertex(vertex: GdVector3): Void;
    public function add_weights(weights: PoolRealArray): Void;
    public function append_from(existing: Mesh, surface: Int, transform: Transform): Void;
    public function begin(primitive: Int): Void;
    public function clear(): Void;
    public function commit(existing: ArrayMesh, flags: Int): ArrayMesh;
    public function commit_to_arrays(): Array<Dynamic>;
    public function create_from(existing: Mesh, surface: Int): Void;
    public function create_from_blend_shape(existing: Mesh, surface: Int, blend_shape: String): Void;
    public function deindex(): Void;
    public function generate_normals(flip: Bool): Void;
    public function generate_tangents(): Void;
    public function index(): Void;
    public function set_material(material: Material): Void;
}
