package magicrt.godot;

class PanoramaSkyRadianceSize {
    public static var Size32: Int = 0;
    public static var Size64: Int = 1;
    public static var Size128: Int = 2;
    public static var Size256: Int = 3;
    public static var Size512: Int = 4;
    public static var Size1024: Int = 5;
    public static var Size2048: Int = 6;
    public static var Max: Int = 7;
}
class PanoramaSkySignalNames {
}
@:native("godot.PanoramaSky")
extern class PanoramaSky extends Sky {
    public var panorama: Texture;
    @:native("__new")
    public function new();
}
