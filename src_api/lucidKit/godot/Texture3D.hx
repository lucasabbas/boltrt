package lucidKit.godot;

@:native("godot.Texture3D")
extern class Texture3D extends TextureLayered {
    public function create(width: Int, height: Int, depth: Int, format: Int, flags: Int): Void;
    @:native("__new")
    public function new();
}
