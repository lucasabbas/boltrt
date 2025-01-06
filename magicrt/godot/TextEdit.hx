package magicrt.godot;

class TextEditGrowHorizontal {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class TextEditGrowVertical {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class TextEditFocusMode {
    public static var None: Int = 0;
    public static var Click: Int = 1;
    public static var All: Int = 2;
}
class TextEditMouseFilter {
    public static var Stop: Int = 0;
    public static var Pass: Int = 1;
    public static var Ignore: Int = 2;
}
class TextEditMouseDefaultCursorShape {
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
class TextEditPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class TextEditPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class TextEditSignalNames {
    public static var breakpointToggled: String = "breakpoint_toggled";
    public static var cursorChanged: String = "cursor_changed";
    public static var infoClicked: String = "info_clicked";
    public static var requestCompletion: String = "request_completion";
    public static var symbolLookup: String = "symbol_lookup";
    public static var textChanged: String = "text_changed";
}
@:native("godot.TextEdit")
extern class TextEdit extends Control {
    public var bookmarkGutter: Bool;
    public var breakpointGutter: Bool;
    public var caretBlink: Bool;
    public var caretBlinkSpeed: Float;
    public var caretBlockMode: Bool;
    public var caretMovingByRightClick: Bool;
    public var contextMenuEnabled: Bool;
    public var deselectOnFocusLossEnabled: Bool;
    public var dragAndDropSelectionEnabled: Bool;
    public var drawSpaces: Bool;
    public var drawTabs: Bool;
    public var foldGutter: Bool;
    public var hidingEnabled: Bool;
    public var highlightAllOccurrences: Bool;
    public var highlightCurrentLine: Bool;
    public var middleMousePasteEnabled: Bool;
    public var minimapDraw: Bool;
    public var minimapWidth: Int;
    public var overrideSelectedFontColor: Bool;
    public var readonly: Bool;
    public var scrollHorizontal: Int;
    public var scrollVertical: Float;
    public var selectingEnabled: Bool;
    public var shortcutKeysEnabled: Bool;
    public var showLineNumbers: Bool;
    public var smoothScrolling: Bool;
    public var syntaxHighlighting: Bool;
    public var text: String;
    public var vScrollSpeed: Float;
    public var virtualKeyboardEnabled: Bool;
    public var wrapEnabled: Bool;
    public function addColorRegion(beginKey: String, endKey: String, color: Color, lineOnly: Bool = false): Void;
    public function addKeywordColor(keyword: String, color: Color): Void;
    public function canFold(line: Int): Bool;
    public function centerViewportToCursor(): Void;
    public function clearColors(): Void;
    public function clearUndoHistory(): Void;
    public function copy(): Void;
    public function cursorGetColumn(): Int;
    public function cursorGetLine(): Int;
    public function cursorSetColumn(column: Int, adjustViewport: Bool = true): Void;
    public function cursorSetLine(line: Int, adjustViewport: Bool = true, canBeHidden: Bool = true, wrapIndex: Int = 0): Void;
    public function cut(): Void;
    public function deselect(): Void;
    public function foldAllLines(): Void;
    public function foldLine(line: Int): Void;
    public function getBreakpoints(): Array<Dynamic>;
    public function getKeywordColor(keyword: String): Color;
    public function getLine(line: Int): String;
    public function getLineColumnAtPos(position: GdVector2): Vector2;
    public function getLineCount(): Int;
    public function getLineHeight(): Int;
    public function getLineWidth(line: Int, wrapIndex: Int = -1): Int;
    public function getLineWrapCount(line: Int): Int;
    public function getLineWrappedText(line: Int): PoolStringArray;
    public function getMenu(): PopupMenu;
    public function getPosAtLineColumn(line: Int, column: Int): Vector2;
    public function getRectAtLineColumn(line: Int, column: Int): Rect2;
    public function getSelectionFromColumn(): Int;
    public function getSelectionFromLine(): Int;
    public function getSelectionText(): String;
    public function getSelectionToColumn(): Int;
    public function getSelectionToLine(): Int;
    public function getTotalGutterWidth(): Int;
    public function getTotalVisibleRows(): Int;
    public function getVisibleRows(): Int;
    public function getWordUnderCursor(): String;
    public function hasKeywordColor(keyword: String): Bool;
    public function hasRedo(): Bool;
    public function hasUndo(): Bool;
    public function insertTextAtCursor(text: String): Void;
    public function isFolded(line: Int): Bool;
    public function isLineHidden(line: Int): Bool;
    public function isLineSetAsBookmark(line: Int): Bool;
    public function isLineSetAsBreakpoint(line: Int): Bool;
    public function isLineSetAsSafe(line: Int): Bool;
    public function isLineWrapped(line: Int): Bool;
    public function isMouseOverSelection(edges: Bool): Bool;
    public function isSelectionActive(): Bool;
    public function menuOption(option: Int): Void;
    public function paste(): Void;
    public function redo(): Void;
    public function removeBreakpoints(): Void;
    public function search(key: String, flags: Int, fromLine: Int, fromColumn: Int): PoolIntArray;
    public function select(fromLine: Int, fromColumn: Int, toLine: Int, toColumn: Int): Void;
    public function selectAll(): Void;
    public function setLine(line: Int, newText: String): Void;
    public function setLineAsBookmark(line: Int, bookmark: Bool): Void;
    public function setLineAsBreakpoint(line: Int, breakpoint: Bool): Void;
    public function setLineAsHidden(line: Int, enable: Bool): Void;
    public function setLineAsSafe(line: Int, safe: Bool): Void;
    public function toggleFoldLine(line: Int): Void;
    public function undo(): Void;
    public function unfoldLine(line: Int): Void;
    public function unhideAllLines(): Void;
    @:native("__new")
    public function new();
}
