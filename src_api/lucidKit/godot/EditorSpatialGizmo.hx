package lucidKit.godot;

@:native("godot.EditorSpatialGizmo")
extern class EditorSpatialGizmo extends SpatialGizmo {
    public function add_collision_segments(segments: PoolVector3Array): Void;
    public function add_collision_triangles(triangles: TriangleMesh): Void;
    public function add_handles(handles: PoolVector3Array, material: Material, billboard: Bool, secondary: Bool): Void;
    public function add_lines(lines: PoolVector3Array, material: Material, billboard: Bool, modulate: Color): Void;
    public function add_mesh(mesh: Mesh, billboard: Bool, skeleton: SkinReference, material: Material): Void;
    public function add_unscaled_billboard(material: Material, default_scale: Float, modulate: Color): Void;
    public function clear(): Void;
    public function commit_handle(index: Int, restore: Variant, cancel: Bool): Void;
    public function get_handle_name(index: Int): String;
    public function get_handle_value(index: Int): Variant;
    public function get_plugin(): EditorSpatialGizmoPlugin;
    public function get_spatial_node(): Spatial;
    public function is_handle_highlighted(index: Int): Bool;
    public function redraw(): Void;
    public function set_handle(index: Int, camera: Camera, point: GdVector2): Void;
    public function set_hidden(hidden: Bool): Void;
    public function set_spatial_node(node: Node): Void;
    @:native("__new")
    public function new();
}
