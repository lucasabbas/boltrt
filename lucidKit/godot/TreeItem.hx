package lucidKit.godot;

class TreeItemSignalNames {
}
@:native("godot.TreeItem")
extern class TreeItem extends Object {
    public var collapsed: Bool;
    public var customMinimumHeight: Int;
    public var disableFolding: Bool;
    public function addButton(column: Int, button: Texture, id: Int = -1, disabled: Bool = false, tooltip: String): Void;
    public function callRecursive(method: String): Variant;
    public function clearCustomBgColor(column: Int): Void;
    public function clearCustomColor(column: Int): Void;
    public function deselect(column: Int): Void;
    public function eraseButton(column: Int, buttonIdx: Int): Void;
    public function getButton(column: Int, buttonIdx: Int): Texture;
    public function getButtonById(column: Int, id: Int): Int;
    public function getButtonCount(column: Int): Int;
    public function getButtonId(column: Int, buttonIdx: Int): Int;
    public function getButtonTooltip(column: Int, buttonIdx: Int): String;
    public function getCellMode(column: Int): Int;
    public function getChildren(): TreeItem;
    public function getCustomBgColor(column: Int): Color;
    public function getCustomColor(column: Int): Color;
    public function getExpandRight(column: Int): Bool;
    public function getIcon(column: Int): Texture;
    public function getIconMaxWidth(column: Int): Int;
    public function getIconModulate(column: Int): Color;
    public function getIconRegion(column: Int): Rect2;
    public function getMetadata(column: Int): Variant;
    public function getNext(): TreeItem;
    public function getNextVisible(wrap: Bool = false): TreeItem;
    public function getParent(): TreeItem;
    public function getPrev(): TreeItem;
    public function getPrevVisible(wrap: Bool = false): TreeItem;
    public function getRange(column: Int): Float;
    public function getRangeConfig(column: Int): Map<Dynamic, Dynamic>;
    public function getSuffix(column: Int): String;
    public function getText(column: Int): String;
    public function getTextAlign(column: Int): Int;
    public function getTooltip(column: Int): String;
    public function isButtonDisabled(column: Int, buttonIdx: Int): Bool;
    public function isChecked(column: Int): Bool;
    public function isCustomSetAsButton(column: Int): Bool;
    public function isEditable(column: Int): Bool;
    public function isSelectable(column: Int): Bool;
    public function isSelected(column: Int): Bool;
    public function moveToBottom(): Void;
    public function moveToTop(): Void;
    public function removeChild(child: Object): Void;
    public function select(column: Int): Void;
    public function setButton(column: Int, buttonIdx: Int, button: Texture): Void;
    public function setButtonDisabled(column: Int, buttonIdx: Int, disabled: Bool): Void;
    public function setCellMode(column: Int, mode: Int): Void;
    public function setChecked(column: Int, checked: Bool): Void;
    public function setCustomAsButton(column: Int, enable: Bool): Void;
    public function setCustomBgColor(column: Int, color: Color, justOutline: Bool = false): Void;
    public function setCustomColor(column: Int, color: Color): Void;
    public function setCustomDraw(column: Int, object: Object, callback: String): Void;
    public function setEditable(column: Int, enabled: Bool): Void;
    public function setExpandRight(column: Int, enable: Bool): Void;
    public function setIcon(column: Int, texture: Texture): Void;
    public function setIconMaxWidth(column: Int, width: Int): Void;
    public function setIconModulate(column: Int, modulate: Color): Void;
    public function setIconRegion(column: Int, region: Rect2): Void;
    public function setMetadata(column: Int, meta: Variant): Void;
    public function setRange(column: Int, value: Float): Void;
    public function setRangeConfig(column: Int, min: Float, max: Float, step: Float, expr: Bool = false): Void;
    public function setSelectable(column: Int, selectable: Bool): Void;
    public function setSuffix(column: Int, text: String): Void;
    public function setText(column: Int, text: String): Void;
    public function setTextAlign(column: Int, textAlign: Int): Void;
    public function setTooltip(column: Int, tooltip: String): Void;
    @:native("__new")
    public function new();
}
