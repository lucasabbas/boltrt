package lucidKit.godot;

class TextureLayeredSignalNames {
}
@:native("godot.TextureLayered")
extern class TextureLayered extends Resource {
    public var data: Map<Dynamic, Dynamic>;
    public var flags: Int;
    public function getDepth(): Int;
    public function getFormat(): Int;
    public function getHeight(): Int;
    public function getLayerData(layer: Int): Image;
    public function getWidth(): Int;
    public function setDataPartial(image: Image, xOffset: Int, yOffset: Int, layer: Int, mipmap: Int = 0): Void;
    public function setLayerData(image: Image, layer: Int): Void;
    @:native("__new")
    public function new();
}
