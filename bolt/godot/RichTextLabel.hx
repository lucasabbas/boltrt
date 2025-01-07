package bolt.godot;

class RichTextLabelGrowHorizontal {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class RichTextLabelGrowVertical {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class RichTextLabelFocusMode {
    public static var None: Int = 0;
    public static var Click: Int = 1;
    public static var All: Int = 2;
}
class RichTextLabelMouseFilter {
    public static var Stop: Int = 0;
    public static var Pass: Int = 1;
    public static var Ignore: Int = 2;
}
class RichTextLabelMouseDefaultCursorShape {
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
class RichTextLabelPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class RichTextLabelPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class RichTextLabelSignalNames {
    public static var metaClicked: String = "meta_clicked";
    public static var metaHoverEnded: String = "meta_hover_ended";
    public static var metaHoverStarted: String = "meta_hover_started";
}
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
    public function installEffect(effect: Dynamic): Void;
    public function newline(): Void;
    public function parseBbcode(bbcode: String): Int;
    public function parseExpressionsForValues(expressions: lua.Table[Int, String]): Map<Dynamic, Dynamic>;
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
    public function pushMeta(data: Dynamic): Void;
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
