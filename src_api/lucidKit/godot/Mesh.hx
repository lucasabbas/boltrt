package lucidKit.godot;

@:native("godot.Mesh")
extern class Mesh extends Resource {
    public var lightmap_size_hint: Vector2;
    public function create_convex_shape(clean: Bool, simplify: Bool): Shape;
    public function create_outline(margin: Float): Mesh;
    public function create_trimesh_shape(): Shape;
    public function generate_triangle_mesh(): TriangleMesh;
    public function get_aabb(): AABB;
    public function get_faces(): PoolVector3Array;
    public function get_surface_count(): Int;
    public function surface_get_arrays(surf_idx: Int): Array<Dynamic>;
    public function surface_get_blend_shape_arrays(surf_idx: Int): Array<Dynamic>;
    public function surface_get_material(surf_idx: Int): Material;
    public function surface_set_material(surf_idx: Int, material: Material): Void;
    @:native("__new")
    public function new();
}
