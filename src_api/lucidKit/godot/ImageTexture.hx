package lucidKit.godot;

@:native("godot.ImageTexture")
extern class ImageTexture extends Texture {
    public var flags: Int;
    public var lossy_quality: Float;
    public var storage: Int;
    public function create(width: Int, height: Int, format: Int, flags: Int): Void;
    public function create_from_image(image: Image, flags: Int): Void;
    public function get_format(): Int;
    public function load(path: String): Int;
    public function set_data(image: Image): Void;
    public function set_size_override(size: GdVector2): Void;
    @:native("__new")
    public function new();
}
