package lucidkit.godot;

@:native("godot.MeshTexture")
extern class MeshTexture extends Texture {
    public var base_texture: Texture;
    public var flags: Int;
    public var image_size: Vector2;
    public var mesh: Mesh;
}
