package lucidKit.godot;

@:native("godot.Label")
extern class Label extends Control {
    public var align: Int;
    public var autowrap: Bool;
    public var clip_text: Bool;
    public var lines_skipped: Int;
    public var max_lines_visible: Int;
    public var percent_visible: Float;
    public var text: String;
    public var uppercase: Bool;
    public var valign: Int;
    public var visible_characters: Int;
    public function get_line_count(): Int;
    public function get_line_height(): Int;
    public function get_total_character_count(): Int;
    public function get_visible_line_count(): Int;
    @:native("__new")
    public function new();
}
