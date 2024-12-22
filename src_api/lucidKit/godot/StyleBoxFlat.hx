package lucidkit.godot;

@:native("godot.StyleBoxFlat")
extern class StyleBoxFlat extends StyleBox {
    public var anti_aliasing: Bool;
    public var anti_aliasing_size: Float;
    public var bg_color: Color;
    public var border_blend: Bool;
    public var border_color: Color;
    public var border_width_bottom: Int;
    public var border_width_left: Int;
    public var border_width_right: Int;
    public var border_width_top: Int;
    public var corner_detail: Int;
    public var corner_radius_bottom_left: Int;
    public var corner_radius_bottom_right: Int;
    public var corner_radius_top_left: Int;
    public var corner_radius_top_right: Int;
    public var draw_center: Bool;
    public var expand_margin_bottom: Float;
    public var expand_margin_left: Float;
    public var expand_margin_right: Float;
    public var expand_margin_top: Float;
    public var shadow_color: Color;
    public var shadow_offset: Vector2;
    public var shadow_size: Int;
    public var skew: Vector2;
    public function get_border_width(margin: Int): Int;
    public function get_border_width_min(): Int;
    public function get_corner_radius(corner: Int): Int;
    public function get_expand_margin(margin: Int): Float;
    public function set_border_width(margin: Int, width: Int): Void;
    public function set_border_width_all(width: Int): Void;
    public function set_corner_radius(corner: Int, radius: Int): Void;
    public function set_corner_radius_all(radius: Int): Void;
    public function set_corner_radius_individual(radius_top_left: Int, radius_top_right: Int, radius_bottom_right: Int, radius_bottom_left: Int): Void;
    public function set_expand_margin(margin: Int, size: Float): Void;
    public function set_expand_margin_all(size: Float): Void;
    public function set_expand_margin_individual(size_left: Float, size_top: Float, size_right: Float, size_bottom: Float): Void;
}
