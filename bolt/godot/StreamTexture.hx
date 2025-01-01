package bolt.godot;

class StreamTextureSignalNames {
}
@:native("godot.StreamTexture")
extern class StreamTexture extends Texture {
    public var loadPath: String;
    public function load(path: String): Int;
    @:native("__new")
    public function new();
}
