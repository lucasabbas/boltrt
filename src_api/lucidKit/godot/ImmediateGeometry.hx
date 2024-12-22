package lucidKit.godot;

@:native("godot.ImmediateGeometry")
extern class ImmediateGeometry extends GeometryInstance {
    public function add_sphere(lats: Int, lons: Int, radius: Float, add_uv: Bool): Void;
    public function add_vertex(position: GdVector3): Void;
    public function begin(primitive: Int, texture: Texture): Void;
    public function clear(): Void;
    public function end(): Void;
    public function set_color(color: Color): Void;
    public function set_normal(normal: GdVector3): Void;
    public function set_tangent(tangent: Plane): Void;
    public function set_uv(uv: GdVector2): Void;
    public function set_uv2(uv: GdVector2): Void;
    @:native("__new")
    public function new();
}
