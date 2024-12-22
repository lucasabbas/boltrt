package lucidKit.godot;

@:native("godot.BaseButton")
extern class BaseButton extends Control {
    public var action_mode: Int;
    public var button_mask: Int;
    public var disabled: Bool;
    public var enabled_focus_mode: Int;
    public var focus_mode: Int;
    public var group: ButtonGroup;
    public var keep_pressed_outside: Bool;
    public var pressed: Bool;
    public var shortcut: ShortCut;
    public var shortcut_in_tooltip: Bool;
    public var toggle_mode: Bool;
    public function _pressed(): Void;
    public function _toggled(button_pressed: Bool): Void;
    public function get_draw_mode(): Int;
    public function is_hovered(): Bool;
    public function set_pressed_no_signal(pressed: Bool): Void;
    @:native("__new")
    public function new();
}
