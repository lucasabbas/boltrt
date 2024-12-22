package lucidkit.godot;

@:native("godot.ProxyTexture")
extern class ProxyTexture extends Texture {
    public var base: Texture;
    public var flags: Int;
}
