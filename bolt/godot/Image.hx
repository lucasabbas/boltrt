package bolt.godot;

class ImageSignalNames {
}
@:native("godot.Image")
extern class Image extends Resource {
    public var data: Map<Dynamic, Dynamic>;
    public function blendRect(src: Image, srcRect: Rect2, dst: GdVector2): Void;
    public function blendRectMask(src: Image, mask: Image, srcRect: Rect2, dst: GdVector2): Void;
    public function blitRect(src: Image, srcRect: Rect2, dst: GdVector2): Void;
    public function blitRectMask(src: Image, mask: Image, srcRect: Rect2, dst: GdVector2): Void;
    public function bumpmapToNormalmap(bumpScale: Float = 1.0): Void;
    public function clearMipmaps(): Void;
    public function compress(mode: Int, source: Int, lossyQuality: Float): Int;
    public function convert(format: Int): Void;
    public function copyFrom(src: Image): Void;
    public function create(width: Int, height: Int, useMipmaps: Bool, format: Int): Void;
    public function createFromData(width: Int, height: Int, useMipmaps: Bool, format: Int, data: PoolByteArray): Void;
    public function crop(width: Int, height: Int): Void;
    public function decompress(): Int;
    public function detectAlpha(): Int;
    public function expandX2Hq2x(): Void;
    public function fill(color: Color): Void;
    public function fillRect(rect: Rect2, color: Color): Void;
    public function fixAlphaEdges(): Void;
    public function flipX(): Void;
    public function flipY(): Void;
    public function generateMipmaps(renormalize: Bool = false): Int;
    public function getData(): PoolByteArray;
    public function getFormat(): Int;
    public function getHeight(): Int;
    public function getMipmapOffset(mipmap: Int): Int;
    public function getPixel(x: Int, y: Int): Color;
    public function getPixelv(src: GdVector2): Color;
    public function getRect(rect: Rect2): Image;
    public function getSize(): Vector2;
    public function getUsedRect(): Rect2;
    public function getWidth(): Int;
    public function hasMipmaps(): Bool;
    public function isCompressed(): Bool;
    public function isEmpty(): Bool;
    public function isInvisible(): Bool;
    public function load(path: String): Int;
    public function loadBmpFromBuffer(buffer: PoolByteArray): Int;
    public function loadJpgFromBuffer(buffer: PoolByteArray): Int;
    public function loadPngFromBuffer(buffer: PoolByteArray): Int;
    public function loadTgaFromBuffer(buffer: PoolByteArray): Int;
    public function loadWebpFromBuffer(buffer: PoolByteArray): Int;
    public function lock(): Void;
    public function normalmapToXy(): Void;
    public function premultiplyAlpha(): Void;
    public function resize(width: Int, height: Int, interpolation: Int = 1): Void;
    public function resizeToPo2(square: Bool = false, interpolation: Int = 1): Void;
    public function rgbeToSrgb(): Image;
    public function saveExr(path: String, grayscale: Bool = false): Int;
    public function savePng(path: String): Int;
    public function savePngToBuffer(): PoolByteArray;
    public function setPixel(x: Int, y: Int, color: Color): Void;
    public function setPixelv(dst: GdVector2, color: Color): Void;
    public function shrinkX2(): Void;
    public function srgbToLinear(): Void;
    public function unlock(): Void;
    @:native("__new")
    public function new();
}
