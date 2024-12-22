package lucidKit.godot;

@:native("godot.ExternalTexture")
extern class ExternalTexture extends Texture {
    public var size: Vector2;
    public function get_external_texture_id(): Int;
    @:native("__new")
    public function new();
}
