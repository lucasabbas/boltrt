package lucidKit.godot;

@:native("godot.ViewportTexture")
extern class ViewportTexture extends Texture {
    public var flags: Int;
    public var resource_local_to_scene: Bool;
    public var viewport_path: NodePath;
    @:native("__new")
    public function new();
}
