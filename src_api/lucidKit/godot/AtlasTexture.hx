package lucidKit.godot;

@:native("godot.AtlasTexture")
extern class AtlasTexture extends Texture {
    public var atlas: Texture;
    public var filter_clip: Bool;
    public var margin: Rect2;
    public var region: Rect2;
    @:native("__new")
    public function new();
}
