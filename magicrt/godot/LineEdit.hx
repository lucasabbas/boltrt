package magicrt.godot;

class LineEditAlign {
    public static var Left: Int = 0;
    public static var Center: Int = 1;
    public static var Right: Int = 2;
    public static var Fill: Int = 3;
}
class LineEditVirtualKeyboardType {
    public static var Default: Int = 0;
    public static var Multiline: Int = 1;
    public static var Number: Int = 2;
    public static var NumberDecimal: Int = 3;
    public static var Phone: Int = 4;
    public static var EmailAddress: Int = 5;
    public static var Password: Int = 6;
    public static var Url: Int = 7;
}
class LineEditGrowHorizontal {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class LineEditGrowVertical {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class LineEditFocusMode {
    public static var None: Int = 0;
    public static var Click: Int = 1;
    public static var All: Int = 2;
}
class LineEditMouseFilter {
    public static var Stop: Int = 0;
    public static var Pass: Int = 1;
    public static var Ignore: Int = 2;
}
class LineEditMouseDefaultCursorShape {
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
class LineEditPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class LineEditPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class LineEditSignalNames {
    public static var textChangeRejected: String = "text_change_rejected";
    public static var textChanged: String = "text_changed";
    public static var textEntered: String = "text_entered";
}
@:native("godot.LineEdit")
extern class LineEdit extends Control {
    public var align: Int;
    public var caretBlink: Bool;
    public var caretBlinkSpeed: Float;
    public var caretPosition: Int;
    public var clearButtonEnabled: Bool;
    public var contextMenuEnabled: Bool;
    public var deselectOnFocusLossEnabled: Bool;
    public var editable: Bool;
    public var expandToTextLength: Bool;
    public var maxLength: Int;
    public var middleMousePasteEnabled: Bool;
    public var placeholderAlpha: Float;
    public var placeholderText: String;
    public var rightIcon: Texture;
    public var secret: Bool;
    public var secretCharacter: String;
    public var selectingEnabled: Bool;
    public var shortcutKeysEnabled: Bool;
    public var text: String;
    public var virtualKeyboardEnabled: Bool;
    public var virtualKeyboardType: Int;
    public function appendAtCursor(text: String): Void;
    public function clear(): Void;
    public function deleteCharAtCursor(): Void;
    public function deleteText(fromColumn: Int, toColumn: Int): Void;
    public function deselect(): Void;
    public function getMenu(): PopupMenu;
    public function getScrollOffset(): Int;
    public function getSelectionFromColumn(): Int;
    public function getSelectionToColumn(): Int;
    public function hasSelection(): Bool;
    public function menuOption(option: Int): Void;
    public function select(from: Int = 0, to: Int = -1): Void;
    public function selectAll(): Void;
    @:native("__new")
    public function new();
}
