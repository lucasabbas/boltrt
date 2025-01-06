package magicrt.godot;

class DynamicFontSignalNames {
}
@:native("godot.DynamicFont")
extern class DynamicFont extends Font {
    public var extraSpacingBottom: Int;
    public var extraSpacingChar: Int;
    public var extraSpacingSpace: Int;
    public var extraSpacingTop: Int;
    public var fontData: DynamicFontData;
    public var outlineColor: Color;
    public var outlineSize: Int;
    public var size: Int;
    public var useFilter: Bool;
    public var useMipmaps: Bool;
    public function addFallback(data: DynamicFontData): Void;
    public function getAvailableChars(): String;
    public function getFallback(idx: Int): DynamicFontData;
    public function getFallbackCount(): Int;
    public function getSpacing(type: Int): Int;
    public function removeFallback(idx: Int): Void;
    public function setFallback(idx: Int, data: DynamicFontData): Void;
    public function setSpacing(type: Int, value: Int): Void;
    @:native("__new")
    public function new();
}
