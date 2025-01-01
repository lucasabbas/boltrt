package bolt.godot;

class OptionButtonAlign {
    public static var Left: Int = 0;
    public static var Center: Int = 1;
    public static var Right: Int = 2;
}
class OptionButtonIconAlign {
    public static var Left: Int = 0;
    public static var Center: Int = 1;
    public static var Right: Int = 2;
}
class OptionButtonActionMode {
    public static var Press: Int = 0;
    public static var Release: Int = 1;
}
class OptionButtonEnabledFocusMode {
    public static var None: Int = 0;
    public static var Click: Int = 1;
    public static var All: Int = 2;
}
class OptionButtonGrowHorizontal {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class OptionButtonGrowVertical {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class OptionButtonFocusMode {
    public static var None: Int = 0;
    public static var Click: Int = 1;
    public static var All: Int = 2;
}
class OptionButtonMouseFilter {
    public static var Stop: Int = 0;
    public static var Pass: Int = 1;
    public static var Ignore: Int = 2;
}
class OptionButtonMouseDefaultCursorShape {
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
class OptionButtonPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class OptionButtonPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class OptionButtonSignalNames {
    public static var itemFocused: String = "item_focused";
    public static var itemSelected: String = "item_selected";
}
@:native("godot.OptionButton")
extern class OptionButton extends Button {
    public var selected: Int;
    public function addIconItem(texture: Texture, label: String, id: Int = -1): Void;
    public function addItem(label: String, id: Int = -1): Void;
    public function addSeparator(): Void;
    public function clear(): Void;
    public function getItemCount(): Int;
    public function getItemIcon(idx: Int): Texture;
    public function getItemId(idx: Int): Int;
    public function getItemIndex(id: Int): Int;
    public function getItemMetadata(idx: Int): Variant;
    public function getItemText(idx: Int): String;
    public function getItemTooltip(idx: Int): String;
    public function getPopup(): PopupMenu;
    public function getSelectedId(): Int;
    public function getSelectedMetadata(): Variant;
    public function isItemDisabled(idx: Int): Bool;
    public function removeItem(idx: Int): Void;
    public function select(idx: Int): Void;
    public function setItemDisabled(idx: Int, disabled: Bool): Void;
    public function setItemIcon(idx: Int, texture: Texture): Void;
    public function setItemId(idx: Int, id: Int): Void;
    public function setItemMetadata(idx: Int, metadata: Variant): Void;
    public function setItemText(idx: Int, text: String): Void;
    public function setItemTooltip(idx: Int, tooltip: String): Void;
    @:native("__new")
    public function new();
}
