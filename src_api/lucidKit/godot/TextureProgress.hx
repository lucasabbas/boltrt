package lucidKit.godot;

@:native("godot.TextureProgress")
extern class TextureProgress extends Range {
    public var fill_mode: Int;
    public var mouse_filter: Int;
    public var nine_patch_stretch: Bool;
    public var radial_center_offset: Vector2;
    public var radial_fill_degrees: Float;
    public var radial_initial_angle: Float;
    public var stretch_margin_bottom: Int;
    public var stretch_margin_left: Int;
    public var stretch_margin_right: Int;
    public var stretch_margin_top: Int;
    public var texture_over: Texture;
    public var texture_progress: Texture;
    public var texture_progress_offset: Vector2;
    public var texture_under: Texture;
    public var tint_over: Color;
    public var tint_progress: Color;
    public var tint_under: Color;
    public function get_stretch_margin(margin: Int): Int;
    public function set_stretch_margin(margin: Int, value: Int): Void;
    @:native("__new")
    public function new();
}
