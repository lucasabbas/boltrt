package lucidKit.godot;

@:native("godot.ScriptCreateDialog")
extern class ScriptCreateDialog extends ConfirmationDialog {
    public function config(inherits: String, path: String, built_in_enabled: Bool, load_enabled: Bool): Void;
    @:native("__new")
    public function new();
}
