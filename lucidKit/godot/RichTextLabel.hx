package lucidKit.godot;

@:native("godot.RichTextLabel")
extern class RichTextLabel extends Control {
    public var bbcodeEnabled: Bool;
    public var bbcodeText: String;
    public var customEffects: Array<Dynamic>;
    public var deselectOnFocusLossEnabled: Bool;
    public var fitContentHeight: Bool;
    public var metaUnderlined: Bool;
    public var overrideSelectedFontColor: Bool;
    public var percentVisible: Float;
    public var scrollActive: Bool;
    public var scrollFollowing: Bool;
    public var selectionEnabled: Bool;
    public var tabSize: Int;
    public var text: String;
    public var visibleCharacters: Int;
    public function addImage(image: Texture, width: Int = 0, height: Int = 0, align: Int = 2): Void;
    public function addText(text: String): Void;
    public function appendBbcode(bbcode: String): Int;
    public function clear(): Void;
    public function deselect(): Void;
    public function getContentHeight(): Int;
    public function getLineCount(): Int;
    public function getSelectedText(): String;
    public function getTotalCharacterCount(): Int;
    public function getVScroll(): VScrollBar;
    public function getVisibleLineCount(): Int;
    public function installEffect(effect: Variant): Void;
    public function newline(): Void;
    public function parseBbcode(bbcode: String): Int;
    public function parseExpressionsForValues(expressions: PoolStringArray): Map<Dynamic, Dynamic>;
    public function pop(): Void;
    public function pushAlign(align: Int): Void;
    public function pushBold(): Void;
    public function pushBoldItalics(): Void;
    public function pushCell(): Void;
    public function pushColor(color: Color): Void;
    public function pushFont(font: Font): Void;
    public function pushIndent(level: Int): Void;
    public function pushItalics(): Void;
    public function pushList(type: Int): Void;
    public function pushMeta(data: Variant): Void;
    public function pushMono(): Void;
    public function pushNormal(): Void;
    public function pushStrikethrough(): Void;
    public function pushTable(columns: Int): Void;
    public function pushUnderline(): Void;
    public function removeLine(line: Int): Bool;
    public function scrollToLine(line: Int): Void;
    public function setTableColumnExpand(column: Int, expand: Bool, ratio: Int): Void;
    @:native("__new")
    public function new();
}
