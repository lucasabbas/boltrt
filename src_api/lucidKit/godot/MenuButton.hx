package lucidKit.godot;

@:native("godot.MenuButton")
extern class MenuButton extends Button {
    public var switchOnHover: Bool;
    public function getPopup(): PopupMenu;
    public function setDisableShortcuts(disabled: Bool): Void;
    @:native("__new")
    public function new();
}
