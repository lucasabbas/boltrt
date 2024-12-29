package lucidKit.godot;

@:native("godot.BaseButton")
extern class BaseButton extends Control {
    public var actionMode: Int;
    public var buttonMask: Int;
    public var disabled: Bool;
    public var enabledFocusMode: Int;
    public var group: ButtonGroup;
    public var keepPressedOutside: Bool;
    public var pressed: Bool;
    public var shortcut: ShortCut;
    public var shortcutInTooltip: Bool;
    public var toggleMode: Bool;
    public function Pressed(): Void;
    public function Toggled(buttonPressed: Bool): Void;
    public function getDrawMode(): Int;
    public function isHovered(): Bool;
    public function setPressedNoSignal(pressed: Bool): Void;
    @:native("__new")
    public function new();
}
