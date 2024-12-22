package lucidkit.godot;

@:native("godot.AtlasTexture")
extern class AtlasTexture extends Texture {
    public var atlas: Texture;
    public var filter_clip: Bool;
    public var flags: Int;
    public var margin: Rect2;
    public var region: Rect2;
}
