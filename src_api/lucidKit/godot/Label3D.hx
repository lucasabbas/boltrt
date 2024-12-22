package lucidKit.godot;

@:native("godot.Label3D")
extern class Label3D extends GeometryInstance {
    public var alpha_cut: Int;
    public var alpha_scissor_threshold: Float;
    public var autowrap: Bool;
    public var billboard: Int;
    public var double_sided: Bool;
    public var fixed_size: Bool;
    public var font: Font;
    public var horizontal_alignment: Int;
    public var line_spacing: Float;
    public var modulate: Color;
    public var no_depth_test: Bool;
    public var offset: Vector2;
    public var outline_modulate: Color;
    public var outline_render_priority: Int;
    public var pixel_size: Float;
    public var render_priority: Int;
    public var shaded: Bool;
    public var text: String;
    public var uppercase: Bool;
    public var vertical_alignment: Int;
    public var width: Float;
    public function generate_triangle_mesh(): TriangleMesh;
    public function get_draw_flag(flag: Int): Bool;
    public function set_draw_flag(flag: Int, enabled: Bool): Void;
    @:native("__new")
    public function new();
}
