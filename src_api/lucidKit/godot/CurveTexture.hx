package lucidkit.godot;

@:native("godot.CurveTexture")
extern class CurveTexture extends Texture {
    public var curve: Curve;
    public var width: Int;
}
