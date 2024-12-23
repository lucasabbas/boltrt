package lucidKit.godot;

@:native("godot.DynamicFontData")
extern class DynamicFontData extends Resource {
    public var antialiased: Bool;
    public var fontPath: String;
    public var hinting: Int;
    public var overrideOversampling: Float;
    @:native("__new")
    public function new();
}
