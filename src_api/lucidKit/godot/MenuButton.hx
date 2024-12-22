package lucidkit.godot;

@:native("godot.MenuButton")
extern class MenuButton extends Button {
    public var action_mode: Int;
    public var flat: Bool;
    public var focus_mode: Int;
    public var switch_on_hover: Bool;
    public var toggle_mode: Bool;
    public function get_popup(): PopupMenu;
    public function set_disable_shortcuts(disabled: Bool): Void;
}
