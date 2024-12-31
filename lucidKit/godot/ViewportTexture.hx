package lucidKit.godot;

class ViewportTextureSignalNames {
}
@:native("godot.ViewportTexture")
extern class ViewportTexture extends Texture {
    public var viewportPath: NodePath;
    @:native("__new")
    public function new();
}
