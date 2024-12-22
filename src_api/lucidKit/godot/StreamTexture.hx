package lucidkit.godot;

@:native("godot.StreamTexture")
extern class StreamTexture extends Texture {
    public var flags: Int;
    public var load_path: String;
    public function load(path: String): Int;
}
