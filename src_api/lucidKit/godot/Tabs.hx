package lucidKit.godot;

@:native("godot.Tabs")
extern class Tabs extends Control {
    public var current_tab: Int;
    public var drag_to_rearrange_enabled: Bool;
    public var scrolling_enabled: Bool;
    public var tab_align: Int;
    public var tab_close_display_policy: Int;
    public function add_tab(title: String, icon: Texture): Void;
    public function ensure_tab_visible(idx: Int): Void;
    public function get_offset_buttons_visible(): Bool;
    public function get_previous_tab(): Int;
    public function get_select_with_rmb(): Bool;
    public function get_tab_button_icon(tab_idx: Int): Texture;
    public function get_tab_count(): Int;
    public function get_tab_disabled(tab_idx: Int): Bool;
    public function get_tab_icon(tab_idx: Int): Texture;
    public function get_tab_metadata(tab_idx: Int): Variant;
    public function get_tab_offset(): Int;
    public function get_tab_rect(tab_idx: Int): Rect2;
    public function get_tab_title(tab_idx: Int): String;
    public function get_tabs_rearrange_group(): Int;
    public function move_tab(from: Int, to: Int): Void;
    public function remove_tab(tab_idx: Int): Void;
    public function set_select_with_rmb(enabled: Bool): Void;
    public function set_tab_button_icon(tab_idx: Int, icon: Texture): Void;
    public function set_tab_disabled(tab_idx: Int, disabled: Bool): Void;
    public function set_tab_icon(tab_idx: Int, icon: Texture): Void;
    public function set_tab_metadata(tab_idx: Int, metadata: Variant): Void;
    public function set_tab_title(tab_idx: Int, title: String): Void;
    public function set_tabs_rearrange_group(group_id: Int): Void;
    @:native("__new")
    public function new();
}
