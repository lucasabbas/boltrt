package lucidkit.godot;

@:native("godot.StyleBoxTexture")
extern class StyleBoxTexture extends StyleBox {
    public var axis_stretch_horizontal: Int;
    public var axis_stretch_vertical: Int;
    public var draw_center: Bool;
    public var expand_margin_bottom: Float;
    public var expand_margin_left: Float;
    public var expand_margin_right: Float;
    public var expand_margin_top: Float;
    public var margin_bottom: Float;
    public var margin_left: Float;
    public var margin_right: Float;
    public var margin_top: Float;
    public var modulate_color: Color;
    public var normal_map: Texture;
    public var region_rect: Rect2;
    public var texture: Texture;
    public function get_expand_margin_size(margin: Int): Float;
    public function get_margin_size(margin: Int): Float;
    public function set_expand_margin_all(size: Float): Void;
    public function set_expand_margin_individual(size_left: Float, size_top: Float, size_right: Float, size_bottom: Float): Void;
    public function set_expand_margin_size(margin: Int, size: Float): Void;
    public function set_margin_size(margin: Int, size: Float): Void;
}
