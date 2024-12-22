package lucidKit.godot;

@:native("godot.FileDialog")
extern class FileDialog extends ConfirmationDialog {
    public var access: Int;
    public var currentDir: String;
    public var currentFile: String;
    public var currentPath: String;
    public var filters: PoolStringArray;
    public var mode: Int;
    public var modeOverridesTitle: Bool;
    public var rootSubfolder: String;
    public var showHiddenFiles: Bool;
    public function addFilter(filter: String): Void;
    public function clearFilters(): Void;
    public function deselectItems(): Void;
    public function getLineEdit(): LineEdit;
    public function getVbox(): VBoxContainer;
    public function invalidate(): Void;
    @:native("__new")
    public function new();
}
