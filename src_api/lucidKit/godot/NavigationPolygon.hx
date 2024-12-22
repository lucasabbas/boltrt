package lucidKit.godot;

@:native("godot.NavigationPolygon")
extern class NavigationPolygon extends Resource {
    public function add_outline(outline: PoolVector2Array): Void;
    public function add_outline_at_index(outline: PoolVector2Array, index: Int): Void;
    public function add_polygon(polygon: PoolIntArray): Void;
    public function clear_outlines(): Void;
    public function clear_polygons(): Void;
    public function get_mesh(): NavigationMesh;
    public function get_outline(idx: Int): PoolVector2Array;
    public function get_outline_count(): Int;
    public function get_polygon(idx: Int): PoolIntArray;
    public function get_polygon_count(): Int;
    public function get_vertices(): PoolVector2Array;
    public function make_polygons_from_outlines(): Void;
    public function remove_outline(idx: Int): Void;
    public function set_outline(idx: Int, outline: PoolVector2Array): Void;
    public function set_vertices(vertices: PoolVector2Array): Void;
    @:native("__new")
    public function new();
}
