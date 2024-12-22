package lucidKit.godot;

@:native("godot.GradientTexture")
extern class GradientTexture extends Texture {
    public var gradient: Gradient;
    public var use_hdr: Bool;
    public var width: Int;
    @:native("__new")
    public function new();
}
