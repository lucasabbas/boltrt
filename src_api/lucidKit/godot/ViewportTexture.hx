package lucidKit.godot;

@:native("godot.ViewportTexture")
extern class ViewportTexture extends Texture {
    public var viewport_path: NodePath;
    @:native("__new")
    public function new();
}
