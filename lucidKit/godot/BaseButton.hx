package lucidKit.godot;

class BaseButtonActionMode {
    public static var Press: Int = 0;
    public static var Release: Int = 1;
}
class BaseButtonEnabledFocusMode {
    public static var None: Int = 0;
    public static var Click: Int = 1;
    public static var All: Int = 2;
}
class BaseButtonGrowHorizontal {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class BaseButtonGrowVertical {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class BaseButtonFocusMode {
    public static var None: Int = 0;
    public static var Click: Int = 1;
    public static var All: Int = 2;
}
class BaseButtonMouseFilter {
    public static var Stop: Int = 0;
    public static var Pass: Int = 1;
    public static var Ignore: Int = 2;
}
class BaseButtonMouseDefaultCursorShape {
    public static var Arrow: Int = 0;
    public static var Ibeam: Int = 1;
    public static var PointingHand: Int = 2;
    public static var Cross: Int = 3;
    public static var Wait: Int = 4;
    public static var Busy: Int = 5;
    public static var Drag: Int = 6;
    public static var CanDrop: Int = 7;
    public static var Forbidden: Int = 8;
    public static var Vsize: Int = 9;
    public static var Hsize: Int = 10;
    public static var Bdiagsize: Int = 11;
    public static var Fdiagsize: Int = 12;
    public static var Move: Int = 13;
    public static var Vsplit: Int = 14;
    public static var Hsplit: Int = 15;
    public static var Help: Int = 16;
}
class BaseButtonPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class BaseButtonPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class BaseButtonSignalNames {
    public static var buttonDown: String = "button_down";
    public static var buttonUp: String = "button_up";
    public static var pressed: String = "pressed";
    public static var toggled: String = "toggled";
}
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
