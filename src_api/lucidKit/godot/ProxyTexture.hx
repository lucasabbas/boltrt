package lucidKit.godot;

@:native("godot.ProxyTexture")
extern class ProxyTexture extends Texture {
    public var base: Texture;
    public var flags: Int;
    @:native("__new")
    public function new();
}
