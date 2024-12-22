package lucidKit.godot;

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
    public function getItemMetadata(idx: Int): Variant;
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
    public function setItemMetadata(idx: Int, metadata: Variant): Void;
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
