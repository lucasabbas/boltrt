package lucidkit.godot;

@:native("godot.OptionButton")
extern class OptionButton extends Button {
    public var action_mode: Int;
    public var align: Int;
    public var selected: Int;
    public var toggle_mode: Bool;
    public function add_icon_item(texture: Texture, label: String, id: Int): Void;
    public function add_item(label: String, id: Int): Void;
    public function add_separator(): Void;
    public function clear(): Void;
    public function get_item_count(): Int;
    public function get_item_icon(idx: Int): Texture;
    public function get_item_id(idx: Int): Int;
    public function get_item_index(id: Int): Int;
    public function get_item_metadata(idx: Int): Variant;
    public function get_item_text(idx: Int): String;
    public function get_item_tooltip(idx: Int): String;
    public function get_popup(): PopupMenu;
    public function get_selected_id(): Int;
    public function get_selected_metadata(): Variant;
    public function is_item_disabled(idx: Int): Bool;
    public function remove_item(idx: Int): Void;
    public function select(idx: Int): Void;
    public function set_item_disabled(idx: Int, disabled: Bool): Void;
    public function set_item_icon(idx: Int, texture: Texture): Void;
    public function set_item_id(idx: Int, id: Int): Void;
    public function set_item_metadata(idx: Int, metadata: Variant): Void;
    public function set_item_text(idx: Int, text: String): Void;
    public function set_item_tooltip(idx: Int, tooltip: String): Void;
}
