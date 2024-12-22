package lucidKit.godot;

@:native("godot.RichTextLabel")
extern class RichTextLabel extends Control {
    public var bbcode_enabled: Bool;
    public var bbcode_text: String;
    public var custom_effects: Array<Dynamic>;
    public var deselect_on_focus_loss_enabled: Bool;
    public var fit_content_height: Bool;
    public var meta_underlined: Bool;
    public var override_selected_font_color: Bool;
    public var percent_visible: Float;
    public var rect_clip_content: Bool;
    public var scroll_active: Bool;
    public var scroll_following: Bool;
    public var selection_enabled: Bool;
    public var tab_size: Int;
    public var text: String;
    public var visible_characters: Int;
    public function add_image(image: Texture, width: Int, height: Int, align: Int): Void;
    public function add_text(text: String): Void;
    public function append_bbcode(bbcode: String): Int;
    public function clear(): Void;
    public function deselect(): Void;
    public function get_content_height(): Int;
    public function get_line_count(): Int;
    public function get_selected_text(): String;
    public function get_total_character_count(): Int;
    public function get_v_scroll(): VScrollBar;
    public function get_visible_line_count(): Int;
    public function install_effect(effect: Variant): Void;
    public function newline(): Void;
    public function parse_bbcode(bbcode: String): Int;
    public function parse_expressions_for_values(expressions: PoolStringArray): Map<Dynamic, Dynamic>;
    public function pop(): Void;
    public function push_align(align: Int): Void;
    public function push_bold(): Void;
    public function push_bold_italics(): Void;
    public function push_cell(): Void;
    public function push_color(color: Color): Void;
    public function push_font(font: Font): Void;
    public function push_indent(level: Int): Void;
    public function push_italics(): Void;
    public function push_list(type: Int): Void;
    public function push_meta(data: Variant): Void;
    public function push_mono(): Void;
    public function push_normal(): Void;
    public function push_strikethrough(): Void;
    public function push_table(columns: Int): Void;
    public function push_underline(): Void;
    public function remove_line(line: Int): Bool;
    public function scroll_to_line(line: Int): Void;
    public function set_table_column_expand(column: Int, expand: Bool, ratio: Int): Void;
    @:native("__new")
    public function new();
}
