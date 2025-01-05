package bolt.godot;

class ItemListSelectMode {
    public static var Single: Int = 0;
    public static var Multi: Int = 1;
}
class ItemListIconMode {
    public static var Top: Int = 0;
    public static var Left: Int = 1;
}
class ItemListGrowHorizontal {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class ItemListGrowVertical {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class ItemListFocusMode {
    public static var None: Int = 0;
    public static var Click: Int = 1;
    public static var All: Int = 2;
}
class ItemListMouseFilter {
    public static var Stop: Int = 0;
    public static var Pass: Int = 1;
    public static var Ignore: Int = 2;
}
class ItemListMouseDefaultCursorShape {
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
class ItemListPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ItemListPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ItemListSignalNames {
    public static var itemActivated: String = "item_activated";
    public static var itemRmbSelected: String = "item_rmb_selected";
    public static var itemSelected: String = "item_selected";
    public static var multiSelected: String = "multi_selected";
    public static var nothingSelected: String = "nothing_selected";
    public static var rmbClicked: String = "rmb_clicked";
}
@:native("godot.ItemList")
extern class ItemList extends Control {
    public var allowReselect: Bool;
    public var allowRmbSelect: Bool;
    public var allowSearch: Bool;
    public var autoHeight: Bool;
    public var fixedColumnWidth: Int;
    public var fixedIconSize: Vector2;
    public var iconMode: Int;
    public var iconScale: Float;
    public var maxColumns: Int;
    public var maxTextLines: Int;
    public var sameColumnWidth: Bool;
    public var selectMode: Int;
    public function addIconItem(icon: Texture, selectable: Bool = true): Void;
    public function addItem(text: String, icon: Texture, selectable: Bool = true): Void;
    public function clear(): Void;
    public function ensureCurrentIsVisible(): Void;
    public function getItemAtPosition(position: GdVector2, exact: Bool = false): Int;
    public function getItemCount(): Int;
    public function getItemCustomBgColor(idx: Int): Color;
    public function getItemCustomFgColor(idx: Int): Color;
    public function getItemIcon(idx: Int): Texture;
    public function getItemIconModulate(idx: Int): Color;
    public function getItemIconRegion(idx: Int): Rect2;
    public function getItemMetadata(idx: Int): Dynamic;
    public function getItemText(idx: Int): String;
    public function getItemTooltip(idx: Int): String;
    public function getSelectedItems(): PoolIntArray;
    public function getVScroll(): VScrollBar;
    public function isAnythingSelected(): Bool;
    public function isItemDisabled(idx: Int): Bool;
    public function isItemIconTransposed(idx: Int): Bool;
    public function isItemSelectable(idx: Int): Bool;
    public function isItemTooltipEnabled(idx: Int): Bool;
    public function isSelected(idx: Int): Bool;
    public function moveItem(fromIdx: Int, toIdx: Int): Void;
    public function removeItem(idx: Int): Void;
    public function select(idx: Int, single: Bool = true): Void;
    public function setItemCustomBgColor(idx: Int, customBgColor: Color): Void;
    public function setItemCustomFgColor(idx: Int, customFgColor: Color): Void;
    public function setItemDisabled(idx: Int, disabled: Bool): Void;
    public function setItemIcon(idx: Int, icon: Texture): Void;
    public function setItemIconModulate(idx: Int, modulate: Color): Void;
    public function setItemIconRegion(idx: Int, rect: Rect2): Void;
    public function setItemIconTransposed(idx: Int, transposed: Bool): Void;
    public function setItemMetadata(idx: Int, metadata: Dynamic): Void;
    public function setItemSelectable(idx: Int, selectable: Bool): Void;
    public function setItemText(idx: Int, text: String): Void;
    public function setItemTooltip(idx: Int, tooltip: String): Void;
    public function setItemTooltipEnabled(idx: Int, enable: Bool): Void;
    public function sortItemsByText(): Void;
    public function unselect(idx: Int): Void;
    public function unselectAll(): Void;
    @:native("__new")
    public function new();
}
