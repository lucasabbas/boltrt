package lucidkit.godot;

@:native("godot.Font")
extern class Font extends Resource {
    public function draw(canvas_item: RID, position: GdVector2, string: String, modulate: Color, clip_w: Int, outline_modulate: Color): Void;
    public function draw_char(canvas_item: RID, position: GdVector2, char: Int, next: Int, modulate: Color, outline: Bool): Float;
    public function get_ascent(): Float;
    public function get_char_contours(char: Int, next: Int): Map<Dynamic, Dynamic>;
    public function get_char_size(char: Int, next: Int): Vector2;
    public function get_char_texture(char: Int, next: Int, outline: Bool): RID;
    public function get_char_texture_size(char: Int, next: Int, outline: Bool): Vector2;
    public function get_char_tx_offset(char: Int, next: Int, outline: Bool): Vector2;
    public function get_char_tx_size(char: Int, next: Int, outline: Bool): Vector2;
    public function get_char_tx_uv_rect(char: Int, next: Int, outline: Bool): Rect2;
    public function get_descent(): Float;
    public function get_height(): Float;
    public function get_string_size(string: String): Vector2;
    public function get_wordwrap_string_size(string: String, width: Float): Vector2;
    public function has_outline(): Bool;
    public function is_distance_field_hint(): Bool;
    public function update_changes(): Void;
}
