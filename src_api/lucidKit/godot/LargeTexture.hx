package lucidKit.godot;

@:native("godot.LargeTexture")
extern class LargeTexture extends Texture {
    public var flags: Int;
    public function add_piece(ofs: GdVector2, texture: Texture): Int;
    public function clear(): Void;
    public function get_piece_count(): Int;
    public function get_piece_offset(idx: Int): Vector2;
    public function get_piece_texture(idx: Int): Texture;
    public function set_piece_offset(idx: Int, ofs: GdVector2): Void;
    public function set_piece_texture(idx: Int, texture: Texture): Void;
    public function set_size(size: GdVector2): Void;
    @:native("__new")
    public function new();
}
