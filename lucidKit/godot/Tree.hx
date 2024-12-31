package lucidKit.godot;

class TreeSelectMode {
    public static var Single: Int = 0;
    public static var Row: Int = 1;
    public static var Multi: Int = 2;
}
class TreeGrowHorizontal {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class TreeGrowVertical {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class TreeFocusMode {
    public static var None: Int = 0;
    public static var Click: Int = 1;
    public static var All: Int = 2;
}
class TreeMouseFilter {
    public static var Stop: Int = 0;
    public static var Pass: Int = 1;
    public static var Ignore: Int = 2;
}
class TreeMouseDefaultCursorShape {
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
class TreePauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class TreePhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class TreeSignalNames {
    public static var buttonPressed: String = "button_pressed";
    public static var cellSelected: String = "cell_selected";
    public static var columnTitlePressed: String = "column_title_pressed";
    public static var customPopupEdited: String = "custom_popup_edited";
    public static var emptyRmb: String = "empty_rmb";
    public static var emptyTreeRmbSelected: String = "empty_tree_rmb_selected";
    public static var itemActivated: String = "item_activated";
    public static var itemCollapsed: String = "item_collapsed";
    public static var itemCustomButtonPressed: String = "item_custom_button_pressed";
    public static var itemDoubleClicked: String = "item_double_clicked";
    public static var itemEdited: String = "item_edited";
    public static var itemRmbEdited: String = "item_rmb_edited";
    public static var itemRmbSelected: String = "item_rmb_selected";
    public static var itemSelected: String = "item_selected";
    public static var multiSelected: String = "multi_selected";
    public static var nothingSelected: String = "nothing_selected";
}
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
