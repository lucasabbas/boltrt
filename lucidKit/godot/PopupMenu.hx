package lucidKit.godot;

class PopupMenuGrowHorizontal {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class PopupMenuGrowVertical {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class PopupMenuFocusMode {
    public static var None: Int = 0;
    public static var Click: Int = 1;
    public static var All: Int = 2;
}
class PopupMenuMouseFilter {
    public static var Stop: Int = 0;
    public static var Pass: Int = 1;
    public static var Ignore: Int = 2;
}
class PopupMenuMouseDefaultCursorShape {
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
class PopupMenuPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class PopupMenuPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class PopupMenuSignalNames {
    public static var idFocused: String = "id_focused";
    public static var idPressed: String = "id_pressed";
    public static var indexPressed: String = "index_pressed";
}
@:native("godot.PopupMenu")
extern class PopupMenu extends Popup {
    public var allowSearch: Bool;
    public var hideOnCheckableItemSelection: Bool;
    public var hideOnItemSelection: Bool;
    public var hideOnStateItemSelection: Bool;
    public var maxHeight: Float;
    public var submenuPopupDelay: Float;
    public function addCheckItem(label: String, id: Int = -1, accel: Int = 0): Void;
    public function addCheckShortcut(shortcut: ShortCut, id: Int = -1, global: Bool = false): Void;
    public function addIconCheckItem(texture: Texture, label: String, id: Int = -1, accel: Int = 0): Void;
    public function addIconCheckShortcut(texture: Texture, shortcut: ShortCut, id: Int = -1, global: Bool = false): Void;
    public function addIconItem(texture: Texture, label: String, id: Int = -1, accel: Int = 0): Void;
    public function addIconRadioCheckItem(texture: Texture, label: String, id: Int = -1, accel: Int = 0): Void;
    public function addIconRadioCheckShortcut(texture: Texture, shortcut: ShortCut, id: Int = -1, global: Bool = false): Void;
    public function addIconShortcut(texture: Texture, shortcut: ShortCut, id: Int = -1, global: Bool = false): Void;
    public function addItem(label: String, id: Int = -1, accel: Int = 0): Void;
    public function addMultistateItem(label: String, maxStates: Int, defaultState: Int = 0, id: Int = -1, accel: Int = 0): Void;
    public function addRadioCheckItem(label: String, id: Int = -1, accel: Int = 0): Void;
    public function addRadioCheckShortcut(shortcut: ShortCut, id: Int = -1, global: Bool = false): Void;
    public function addSeparator(label: String, id: Int = -1): Void;
    public function addShortcut(shortcut: ShortCut, id: Int = -1, global: Bool = false): Void;
    public function addSubmenuItem(label: String, submenu: String, id: Int = -1): Void;
    public function clear(): Void;
    public function getCurrentIndex(): Int;
    public function getItemAccelerator(idx: Int): Int;
    public function getItemCount(): Int;
    public function getItemIcon(idx: Int): Texture;
    public function getItemId(idx: Int): Int;
    public function getItemIndex(id: Int): Int;
    public function getItemMetadata(idx: Int): Variant;
    public function getItemShortcut(idx: Int): ShortCut;
    public function getItemSubmenu(idx: Int): String;
    public function getItemText(idx: Int): String;
    public function getItemTooltip(idx: Int): String;
    public function isHideOnWindowLoseFocus(): Bool;
    public function isItemCheckable(idx: Int): Bool;
    public function isItemChecked(idx: Int): Bool;
    public function isItemDisabled(idx: Int): Bool;
    public function isItemRadioCheckable(idx: Int): Bool;
    public function isItemSeparator(idx: Int): Bool;
    public function isItemShortcutDisabled(idx: Int): Bool;
    public function removeItem(idx: Int): Void;
    public function setCurrentIndex(index: Int): Void;
    public function setHideOnWindowLoseFocus(enable: Bool): Void;
    public function setItemAccelerator(idx: Int, accel: Int): Void;
    public function setItemAsCheckable(idx: Int, enable: Bool): Void;
    public function setItemAsRadioCheckable(idx: Int, enable: Bool): Void;
    public function setItemAsSeparator(idx: Int, enable: Bool): Void;
    public function setItemChecked(idx: Int, checked: Bool): Void;
    public function setItemDisabled(idx: Int, disabled: Bool): Void;
    public function setItemIcon(idx: Int, icon: Texture): Void;
    public function setItemId(idx: Int, id: Int): Void;
    public function setItemMetadata(idx: Int, metadata: Variant): Void;
    public function setItemMultistate(idx: Int, state: Int): Void;
    public function setItemShortcut(idx: Int, shortcut: ShortCut, global: Bool = false): Void;
    public function setItemShortcutDisabled(idx: Int, disabled: Bool): Void;
    public function setItemSubmenu(idx: Int, submenu: String): Void;
    public function setItemText(idx: Int, text: String): Void;
    public function setItemTooltip(idx: Int, tooltip: String): Void;
    public function toggleItemChecked(idx: Int): Void;
    public function toggleItemMultistate(idx: Int): Void;
    @:native("__new")
    public function new();
}
