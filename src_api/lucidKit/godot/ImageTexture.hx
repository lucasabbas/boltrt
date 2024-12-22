package lucidKit.godot;

@:native("godot.ImageTexture")
extern class ImageTexture extends Texture {
    public var lossyQuality: Float;
    public var storage: Int;
    public function create(width: Int, height: Int, format: Int, flags: Int = 7): Void;
    public function createFromImage(image: Image, flags: Int = 7): Void;
    public function getFormat(): Int;
    public function load(path: String): Int;
    public function setData(image: Image): Void;
    public function setSizeOverride(size: GdVector2): Void;
    @:native("__new")
    public function new();
}
