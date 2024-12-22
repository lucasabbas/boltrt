package lucidKit.godot;

@:native("godot.PopupMenu")
extern class PopupMenu extends Popup {
    public var allow_search: Bool;
    public var focus_mode: Int;
    public var hide_on_checkable_item_selection: Bool;
    public var hide_on_item_selection: Bool;
    public var hide_on_state_item_selection: Bool;
    public var max_height: Float;
    public var submenu_popup_delay: Float;
    public function add_check_item(label: String, id: Int, accel: Int): Void;
    public function add_check_shortcut(shortcut: ShortCut, id: Int, global: Bool): Void;
    public function add_icon_check_item(texture: Texture, label: String, id: Int, accel: Int): Void;
    public function add_icon_check_shortcut(texture: Texture, shortcut: ShortCut, id: Int, global: Bool): Void;
    public function add_icon_item(texture: Texture, label: String, id: Int, accel: Int): Void;
    public function add_icon_radio_check_item(texture: Texture, label: String, id: Int, accel: Int): Void;
    public function add_icon_radio_check_shortcut(texture: Texture, shortcut: ShortCut, id: Int, global: Bool): Void;
    public function add_icon_shortcut(texture: Texture, shortcut: ShortCut, id: Int, global: Bool): Void;
    public function add_item(label: String, id: Int, accel: Int): Void;
    public function add_multistate_item(label: String, max_states: Int, default_state: Int, id: Int, accel: Int): Void;
    public function add_radio_check_item(label: String, id: Int, accel: Int): Void;
    public function add_radio_check_shortcut(shortcut: ShortCut, id: Int, global: Bool): Void;
    public function add_separator(label: String, id: Int): Void;
    public function add_shortcut(shortcut: ShortCut, id: Int, global: Bool): Void;
    public function add_submenu_item(label: String, submenu: String, id: Int): Void;
    public function clear(): Void;
    public function get_current_index(): Int;
    public function get_item_accelerator(idx: Int): Int;
    public function get_item_count(): Int;
    public function get_item_icon(idx: Int): Texture;
    public function get_item_id(idx: Int): Int;
    public function get_item_index(id: Int): Int;
    public function get_item_metadata(idx: Int): Variant;
    public function get_item_shortcut(idx: Int): ShortCut;
    public function get_item_submenu(idx: Int): String;
    public function get_item_text(idx: Int): String;
    public function get_item_tooltip(idx: Int): String;
    public function is_hide_on_window_lose_focus(): Bool;
    public function is_item_checkable(idx: Int): Bool;
    public function is_item_checked(idx: Int): Bool;
    public function is_item_disabled(idx: Int): Bool;
    public function is_item_radio_checkable(idx: Int): Bool;
    public function is_item_separator(idx: Int): Bool;
    public function is_item_shortcut_disabled(idx: Int): Bool;
    public function remove_item(idx: Int): Void;
    public function set_current_index(index: Int): Void;
    public function set_hide_on_window_lose_focus(enable: Bool): Void;
    public function set_item_accelerator(idx: Int, accel: Int): Void;
    public function set_item_as_checkable(idx: Int, enable: Bool): Void;
    public function set_item_as_radio_checkable(idx: Int, enable: Bool): Void;
    public function set_item_as_separator(idx: Int, enable: Bool): Void;
    public function set_item_checked(idx: Int, checked: Bool): Void;
    public function set_item_disabled(idx: Int, disabled: Bool): Void;
    public function set_item_icon(idx: Int, icon: Texture): Void;
    public function set_item_id(idx: Int, id: Int): Void;
    public function set_item_metadata(idx: Int, metadata: Variant): Void;
    public function set_item_multistate(idx: Int, state: Int): Void;
    public function set_item_shortcut(idx: Int, shortcut: ShortCut, global: Bool): Void;
    public function set_item_shortcut_disabled(idx: Int, disabled: Bool): Void;
    public function set_item_submenu(idx: Int, submenu: String): Void;
    public function set_item_text(idx: Int, text: String): Void;
    public function set_item_tooltip(idx: Int, tooltip: String): Void;
    public function toggle_item_checked(idx: Int): Void;
    public function toggle_item_multistate(idx: Int): Void;
    @:native("__new")
    public function new();
}
