package magicrt.godot;

class GradientTextureSignalNames {
}
@:native("godot.GradientTexture")
extern class GradientTexture extends Texture {
    public var gradient: Gradient;
    public var useHdr: Bool;
    public var width: Int;
    @:native("__new")
    public function new();
}
