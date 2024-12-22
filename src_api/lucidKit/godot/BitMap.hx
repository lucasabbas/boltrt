package lucidKit.godot;

@:native("godot.BitMap")
extern class BitMap extends Resource {
    public function convert_to_image(): Image;
    public function create(size: GdVector2): Void;
    public function create_from_image_alpha(image: Image, threshold: Float): Void;
    public function get_bit(position: GdVector2): Bool;
    public function get_size(): Vector2;
    public function get_true_bit_count(): Int;
    public function grow_mask(pixels: Int, rect: Rect2): Void;
    public function opaque_to_polygons(rect: Rect2, epsilon: Float): Array<Dynamic>;
    public function resize(new_size: GdVector2): Void;
    public function set_bit(position: GdVector2, bit: Bool): Void;
    public function set_bit_rect(rect: Rect2, bit: Bool): Void;
    @:native("__new")
    public function new();
}
