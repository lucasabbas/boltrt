package magicrt.godot;

class ScriptCreateDialogSignalNames {
    public static var scriptCreated: String = "script_created";
}
@:native("godot.ScriptCreateDialog")
extern class ScriptCreateDialog extends ConfirmationDialog {
    public function config(inherits: String, path: String, builtInEnabled: Bool = true, loadEnabled: Bool = true): Void;
    @:native("__new")
    public function new();
}
