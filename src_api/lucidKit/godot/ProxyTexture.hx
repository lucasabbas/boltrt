package lucidKit.godot;

@:native("godot.ProxyTexture")
extern class ProxyTexture extends Texture {
    public var base: Texture;
    @:native("__new")
    public function new();
}
