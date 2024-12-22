package lucidKit.godot;

@:native("godot.Tree")
extern class Tree extends Control {
    public var allowReselect: Bool;
    public var allowRmbSelect: Bool;
    public var allowSearch: Bool;
    public var columnTitlesVisible: Bool;
    public var columns: Int;
    public var dropModeFlags: Int;
    public var hideFolding: Bool;
    public var hideRoot: Bool;
    public var selectMode: Int;
    public function clear(): Void;
    public function createItem(parent: Object, idx: Int = -1): TreeItem;
    public function editSelected(): Bool;
    public function ensureCursorIsVisible(): Void;
    public function getButtonIdAtPosition(position: GdVector2): Int;
    public function getColumnAtPosition(position: GdVector2): Int;
    public function getColumnTitle(column: Int): String;
    public function getColumnWidth(column: Int): Int;
    public function getCustomPopupRect(): Rect2;
    public function getDropSectionAtPosition(position: GdVector2): Int;
    public function getEdited(): TreeItem;
    public function getEditedColumn(): Int;
    public function getItemAreaRect(item: Object, column: Int = -1): Rect2;
    public function getItemAtPosition(position: GdVector2): TreeItem;
    public function getNextSelected(from: Object): TreeItem;
    public function getPressedButton(): Int;
    public function getRoot(): TreeItem;
    public function getScroll(): Vector2;
    public function getSelected(): TreeItem;
    public function getSelectedColumn(): Int;
    public function scrollToItem(item: Object): Void;
    public function setColumnExpand(column: Int, expand: Bool): Void;
    public function setColumnMinWidth(column: Int, minWidth: Int): Void;
    public function setColumnTitle(column: Int, title: String): Void;
    public function setSelected(item: Object, column: Int): Void;
    @:native("__new")
    public function new();
}
