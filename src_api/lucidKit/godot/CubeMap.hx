package lucidkit.godot;

@:native("godot.CubeMap")
extern class CubeMap extends Resource {
    public var flags: Int;
    public var lossy_storage_quality: Float;
    public var storage_mode: Int;
    public function get_height(): Int;
    public function get_side(side: Int): Image;
    public function get_width(): Int;
    public function set_side(side: Int, image: Image): Void;
}
