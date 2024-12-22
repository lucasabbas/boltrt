package lucidKit.godot;

@:native("godot.Label")
extern class Label extends Control {
    public var align: Int;
    public var autowrap: Bool;
    public var clipText: Bool;
    public var linesSkipped: Int;
    public var maxLinesVisible: Int;
    public var percentVisible: Float;
    public var text: String;
    public var uppercase: Bool;
    public var valign: Int;
    public var visibleCharacters: Int;
    public function getLineCount(): Int;
    public function getLineHeight(): Int;
    public function getTotalCharacterCount(): Int;
    public function getVisibleLineCount(): Int;
    @:native("__new")
    public function new();
}
