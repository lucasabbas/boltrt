package lucidKit.godot;

@:native("godot.BitmapFont")
extern class BitmapFont extends Font {
    public var ascent: Float;
    public var distance_field: Bool;
    public var fallback: BitmapFont;
    public var height: Float;
    public function add_char(character: Int, texture: Int, rect: Rect2, align: GdVector2, advance: Float): Void;
    public function add_kerning_pair(char_a: Int, char_b: Int, kerning: Int): Void;
    public function add_texture(texture: Texture): Void;
    public function clear(): Void;
    public function create_from_fnt(path: String): Int;
    public function get_kerning_pair(char_a: Int, char_b: Int): Int;
    public function get_texture(idx: Int): Texture;
    public function get_texture_count(): Int;
    @:native("__new")
    public function new();
}
