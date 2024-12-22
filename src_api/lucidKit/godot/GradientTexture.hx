package lucidkit.godot;

@:native("godot.GradientTexture")
extern class GradientTexture extends Texture {
    public var gradient: Gradient;
    public var use_hdr: Bool;
    public var width: Int;
}
