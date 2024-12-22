package lucidKit.godot;

@:native("godot.TabContainer")
extern class TabContainer extends Container {
    public var all_tabs_in_front: Bool;
    public var current_tab: Int;
    public var drag_to_rearrange_enabled: Bool;
    public var tab_align: Int;
    public var tabs_visible: Bool;
    public var use_hidden_tabs_for_min_size: Bool;
    public function get_current_tab_control(): Control;
    public function get_popup(): Popup;
    public function get_previous_tab(): Int;
    public function get_tab_control(tab_idx: Int): Control;
    public function get_tab_count(): Int;
    public function get_tab_disabled(tab_idx: Int): Bool;
    public function get_tab_hidden(tab_idx: Int): Bool;
    public function get_tab_icon(tab_idx: Int): Texture;
    public function get_tab_idx_at_point(point: GdVector2): Int;
    public function get_tab_metadata(tab_idx: Int): Variant;
    public function get_tab_title(tab_idx: Int): String;
    public function get_tabs_rearrange_group(): Int;
    public function set_popup(popup: Node): Void;
    public function set_tab_disabled(tab_idx: Int, disabled: Bool): Void;
    public function set_tab_hidden(tab_idx: Int, hidden: Bool): Void;
    public function set_tab_icon(tab_idx: Int, icon: Texture): Void;
    public function set_tab_metadata(tab_idx: Int, metadata: Variant): Void;
    public function set_tab_title(tab_idx: Int, title: String): Void;
    public function set_tabs_rearrange_group(group_id: Int): Void;
    @:native("__new")
    public function new();
}
