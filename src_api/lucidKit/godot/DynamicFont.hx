package lucidkit.godot;

@:native("godot.DynamicFont")
extern class DynamicFont extends Font {
    public var extra_spacing_bottom: Int;
    public var extra_spacing_char: Int;
    public var extra_spacing_space: Int;
    public var extra_spacing_top: Int;
    public var font_data: DynamicFontData;
    public var outline_color: Color;
    public var outline_size: Int;
    public var size: Int;
    public var use_filter: Bool;
    public var use_mipmaps: Bool;
    public function add_fallback(data: DynamicFontData): Void;
    public function get_available_chars(): String;
    public function get_fallback(idx: Int): DynamicFontData;
    public function get_fallback_count(): Int;
    public function get_spacing(type: Int): Int;
    public function remove_fallback(idx: Int): Void;
    public function set_fallback(idx: Int, data: DynamicFontData): Void;
    public function set_spacing(type: Int, value: Int): Void;
}
