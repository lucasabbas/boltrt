package lucidKit.godot;

@:native("godot.Tree")
extern class Tree extends Control {
    public var allow_reselect: Bool;
    public var allow_rmb_select: Bool;
    public var allow_search: Bool;
    public var column_titles_visible: Bool;
    public var columns: Int;
    public var drop_mode_flags: Int;
    public var hide_folding: Bool;
    public var hide_root: Bool;
    public var select_mode: Int;
    public function clear(): Void;
    public function create_item(parent: Object, idx: Int): TreeItem;
    public function edit_selected(): Bool;
    public function ensure_cursor_is_visible(): Void;
    public function get_button_id_at_position(position: GdVector2): Int;
    public function get_column_at_position(position: GdVector2): Int;
    public function get_column_title(column: Int): String;
    public function get_column_width(column: Int): Int;
    public function get_custom_popup_rect(): Rect2;
    public function get_drop_section_at_position(position: GdVector2): Int;
    public function get_edited(): TreeItem;
    public function get_edited_column(): Int;
    public function get_item_area_rect(item: Object, column: Int): Rect2;
    public function get_item_at_position(position: GdVector2): TreeItem;
    public function get_next_selected(from: Object): TreeItem;
    public function get_pressed_button(): Int;
    public function get_root(): TreeItem;
    public function get_scroll(): Vector2;
    public function get_selected(): TreeItem;
    public function get_selected_column(): Int;
    public function scroll_to_item(item: Object): Void;
    public function set_column_expand(column: Int, expand: Bool): Void;
    public function set_column_min_width(column: Int, min_width: Int): Void;
    public function set_column_title(column: Int, title: String): Void;
    public function set_selected(item: Object, column: Int): Void;
    @:native("__new")
    public function new();
}
