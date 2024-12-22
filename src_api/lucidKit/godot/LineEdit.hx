package lucidKit.godot;

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
