package lucidkit.godot;

@:native("godot.TextureArray")
extern class TextureArray extends TextureLayered {
    public function create(width: Int, height: Int, depth: Int, format: Int, flags: Int): Void;
}
