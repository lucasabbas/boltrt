package lucidKit.godot;

@:native("godot.MenuButton")
extern class MenuButton extends Button {
    public var switch_on_hover: Bool;
    public function get_popup(): PopupMenu;
    public function set_disable_shortcuts(disabled: Bool): Void;
    @:native("__new")
    public function new();
}
