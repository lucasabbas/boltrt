package lucidKit.godot;

@:native("godot.BitMap")
extern class BitMap extends Resource {
    public function convertToImage(): Image;
    public function create(size: GdVector2): Void;
    public function createFromImageAlpha(image: Image, threshold: Float = 0.1): Void;
    public function getBit(position: GdVector2): Bool;
    public function getSize(): Vector2;
    public function getTrueBitCount(): Int;
    public function growMask(pixels: Int, rect: Rect2): Void;
    public function opaqueToPolygons(rect: Rect2, epsilon: Float = 2.0): Array<Dynamic>;
    public function resize(newSize: GdVector2): Void;
    public function setBit(position: GdVector2, bit: Bool): Void;
    public function setBitRect(rect: Rect2, bit: Bool): Void;
    @:native("__new")
    public function new();
}
