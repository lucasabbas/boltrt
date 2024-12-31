package lucidKit.godot;

class TextureArraySignalNames {
}
@:native("godot.TextureArray")
extern class TextureArray extends TextureLayered {
    public function create(width: Int, height: Int, depth: Int, format: Int, flags: Int = 7): Void;
    @:native("__new")
    public function new();
}
