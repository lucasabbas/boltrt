package lucidKit.godot;

class DynamicFontDataHinting {
    public static var None: Int = 0;
    public static var Light: Int = 1;
    public static var Normal: Int = 2;
}
class DynamicFontDataSignalNames {
}
@:native("godot.DynamicFontData")
extern class DynamicFontData extends Resource {
    public var antialiased: Bool;
    public var fontPath: String;
    public var hinting: Int;
    public var overrideOversampling: Float;
    @:native("__new")
    public function new();
}
