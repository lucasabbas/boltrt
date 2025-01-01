package bolt.godot;

class AtlasTextureSignalNames {
}
@:native("godot.AtlasTexture")
extern class AtlasTexture extends Texture {
    public var atlas: Texture;
    public var filterClip: Bool;
    public var margin: Rect2;
    public var region: Rect2;
    @:native("__new")
    public function new();
}
