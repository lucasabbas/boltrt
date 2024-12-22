package lucidKit.godot;

@:native("godot.MeshTexture")
extern class MeshTexture extends Texture {
    public var baseTexture: Texture;
    public var imageSize: Vector2;
    public var mesh: Mesh;
    @:native("__new")
    public function new();
}
