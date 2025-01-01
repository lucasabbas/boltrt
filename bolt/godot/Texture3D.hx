package bolt.godot;

class Texture3DSignalNames {
}
@:native("godot.Texture3D")
extern class Texture3D extends TextureLayered {
    public function create(width: Int, height: Int, depth: Int, format: Int, flags: Int = 4): Void;
    @:native("__new")
    public function new();
}
