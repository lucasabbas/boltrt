package lucidkit.godot;

@:native("godot.EditorSpatialGizmoPlugin")
extern class EditorSpatialGizmoPlugin extends Resource {
    public function add_material(name: String, material: Material3D): Void;
    public function can_be_hidden(): Bool;
    public function commit_handle(gizmo: EditorSpatialGizmo, index: Int, restore: Variant, cancel: Bool): Void;
    public function create_gizmo(spatial: Spatial): EditorSpatialGizmo;
    public function create_handle_material(name: String, billboard: Bool, texture: Texture): Void;
    public function create_icon_material(name: String, texture: Texture, on_top: Bool, color: Color): Void;
    public function create_material(name: String, color: Color, billboard: Bool, on_top: Bool, use_vertex_color: Bool): Void;
    public function get_handle_name(gizmo: EditorSpatialGizmo, index: Int): String;
    public function get_handle_value(gizmo: EditorSpatialGizmo, index: Int): Variant;
    public function get_material(name: String, gizmo: EditorSpatialGizmo): Material3D;
    public function get_name(): String;
    public function get_priority(): Int;
    public function has_gizmo(spatial: Spatial): Bool;
    public function is_handle_highlighted(gizmo: EditorSpatialGizmo, index: Int): Bool;
    public function is_selectable_when_hidden(): Bool;
    public function redraw(gizmo: EditorSpatialGizmo): Void;
    public function set_handle(gizmo: EditorSpatialGizmo, index: Int, camera: Camera, point: GdVector2): Void;
}
