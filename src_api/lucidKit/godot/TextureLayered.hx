package lucidkit.godot;

@:native("godot.TextureLayered")
extern class TextureLayered extends Resource {
    public var data: Map<Dynamic, Dynamic>;
    public var flags: Int;
    public function get_depth(): Int;
    public function get_format(): Int;
    public function get_height(): Int;
    public function get_layer_data(layer: Int): Image;
    public function get_width(): Int;
    public function set_data_partial(image: Image, x_offset: Int, y_offset: Int, layer: Int, mipmap: Int): Void;
    public function set_layer_data(image: Image, layer: Int): Void;
}
