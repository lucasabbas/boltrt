package lucidkit.godot;

@:native("godot.Texture")
extern class Texture extends Resource {
    public var flags: Int;
    public function draw(canvas_item: RID, position: GdVector2, modulate: Color, transpose: Bool, normal_map: Texture): Void;
    public function draw_rect(canvas_item: RID, rect: Rect2, tile: Bool, modulate: Color, transpose: Bool, normal_map: Texture): Void;
    public function draw_rect_region(canvas_item: RID, rect: Rect2, src_rect: Rect2, modulate: Color, transpose: Bool, normal_map: Texture, clip_uv: Bool): Void;
    public function get_data(): Image;
    public function get_height(): Int;
    public function get_size(): Vector2;
    public function get_width(): Int;
    public function has_alpha(): Bool;
}
