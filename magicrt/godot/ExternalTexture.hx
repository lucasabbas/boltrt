package magicrt.godot;

class ExternalTextureSignalNames {
}
@:native("godot.ExternalTexture")
extern class ExternalTexture extends Texture {
    public var size: Vector2;
    public function getExternalTextureId(): Int;
    @:native("__new")
    public function new();
}
