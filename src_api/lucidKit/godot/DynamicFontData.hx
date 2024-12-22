package lucidkit.godot;

@:native("godot.DynamicFontData")
extern class DynamicFontData extends Resource {
    public var antialiased: Bool;
    public var font_path: String;
    public var hinting: Int;
    public var override_oversampling: Float;
}
