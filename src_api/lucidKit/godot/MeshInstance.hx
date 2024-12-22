package lucidKit.godot;

@:native("godot.MeshInstance")
extern class MeshInstance extends GeometryInstance {
    public var mesh: Mesh;
    public var skeleton: NodePath;
    public var skin: Skin;
    public var software_skinning_transform_normals: Bool;
    public function create_convex_collision(clean: Bool, simplify: Bool): Void;
    public function create_debug_tangents(): Void;
    public function create_multiple_convex_collisions(): Void;
    public function create_trimesh_collision(): Void;
    public function get_active_material(surface: Int): Material;
    public function get_surface_material(surface: Int): Material;
    public function get_surface_material_count(): Int;
    public function is_mergeable_with(other_mesh_instance: Node, shadows_only: Bool): Bool;
    public function merge_meshes(mesh_instances: Array<Dynamic>, use_global_space: Bool, check_compatibility: Bool, shadows_only: Bool): Bool;
    public function set_surface_material(surface: Int, material: Material): Void;
    @:native("__new")
    public function new();
}
