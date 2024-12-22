package lucidKit.godot;

@:native("godot.GraphNode")
extern class GraphNode extends Container {
    public var comment: Bool;
    public var offset: Vector2;
    public var overlay: Int;
    public var resizable: Bool;
    public var selected: Bool;
    public var show_close: Bool;
    public var title: String;
    public function clear_all_slots(): Void;
    public function clear_slot(idx: Int): Void;
    public function get_connection_input_color(idx: Int): Color;
    public function get_connection_input_count(): Int;
    public function get_connection_input_position(idx: Int): Vector2;
    public function get_connection_input_type(idx: Int): Int;
    public function get_connection_output_color(idx: Int): Color;
    public function get_connection_output_count(): Int;
    public function get_connection_output_position(idx: Int): Vector2;
    public function get_connection_output_type(idx: Int): Int;
    public function get_slot_color_left(idx: Int): Color;
    public function get_slot_color_right(idx: Int): Color;
    public function get_slot_type_left(idx: Int): Int;
    public function get_slot_type_right(idx: Int): Int;
    public function is_slot_enabled_left(idx: Int): Bool;
    public function is_slot_enabled_right(idx: Int): Bool;
    public function set_slot(idx: Int, enable_left: Bool, type_left: Int, color_left: Color, enable_right: Bool, type_right: Int, color_right: Color, custom_left: Texture, custom_right: Texture): Void;
    public function set_slot_color_left(idx: Int, color_left: Color): Void;
    public function set_slot_color_right(idx: Int, color_right: Color): Void;
    public function set_slot_enabled_left(idx: Int, enable_left: Bool): Void;
    public function set_slot_enabled_right(idx: Int, enable_right: Bool): Void;
    public function set_slot_type_left(idx: Int, type_left: Int): Void;
    public function set_slot_type_right(idx: Int, type_right: Int): Void;
    @:native("__new")
    public function new();
}
