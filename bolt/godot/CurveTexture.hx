package bolt.godot;

class CurveTextureSignalNames {
}
@:native("godot.CurveTexture")
extern class CurveTexture extends Texture {
    public var curve: Curve;
    public var width: Int;
    @:native("__new")
    public function new();
}
