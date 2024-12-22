package lucidKit.godot;

@:native("godot.SpriteBase3D")
extern class SpriteBase3D extends GeometryInstance {
    public var alpha_cut: Int;
    public var axis: Int;
    public var billboard: Int;
    public var centered: Bool;
    public var double_sided: Bool;
    public var fixed_size: Bool;
    public var flip_h: Bool;
    public var flip_v: Bool;
    public var modulate: Color;
    public var no_depth_test: Bool;
    public var offset: Vector2;
    public var opacity: Float;
    public var pixel_size: Float;
    public var render_priority: Int;
    public var shaded: Bool;
    public var transparent: Bool;
    public function generate_triangle_mesh(): TriangleMesh;
    public function get_draw_flag(flag: Int): Bool;
    public function get_item_rect(): Rect2;
    public function set_draw_flag(flag: Int, enabled: Bool): Void;
    @:native("__new")
    public function new();
}
