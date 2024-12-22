package lucidkit.godot;

@:native("godot.StyleBox")
extern class StyleBox extends Resource {
    public var content_margin_bottom: Float;
    public var content_margin_left: Float;
    public var content_margin_right: Float;
    public var content_margin_top: Float;
    public function draw(canvas_item: RID, rect: Rect2): Void;
    public function get_center_size(): Vector2;
    public function get_current_item_drawn(): CanvasItem;
    public function get_default_margin(margin: Int): Float;
    public function get_margin(margin: Int): Float;
    public function get_minimum_size(): Vector2;
    public function get_offset(): Vector2;
    public function set_default_margin(margin: Int, offset: Float): Void;
    public function test_mask(point: GdVector2, rect: Rect2): Bool;
}
