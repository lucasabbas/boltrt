package magicrt.godot;

class ScriptEditorSignalNames {
    public static var editorScriptChanged: String = "editor_script_changed";
    public static var scriptClose: String = "script_close";
}
@:native("godot.ScriptEditor")
extern class ScriptEditor extends PanelContainer {
    public function canDropDataFw(point: GdVector2, data: Dynamic, from: Control): Bool;
    public function dropDataFw(point: GdVector2, data: Dynamic, from: Control): Void;
    public function getBaseEditor(): Control;
    public function getCurrentScript(): Script;
    public function getDragDataFw(point: GdVector2, from: Control): Dynamic;
    public function getOpenScripts(): Array<Dynamic>;
    public function gotoLine(lineNumber: Int): Void;
    public function openScriptCreateDialog(baseName: String, basePath: String): Void;
    public function reloadScripts(): Void;
    @:native("__new")
    public function new();
}
