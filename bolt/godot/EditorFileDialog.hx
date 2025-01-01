package bolt.godot;

class EditorFileDialogSignalNames {
    public static var dirSelected: String = "dir_selected";
    public static var fileSelected: String = "file_selected";
    public static var filesSelected: String = "files_selected";
}
@:native("godot.EditorFileDialog")
extern class EditorFileDialog extends ConfirmationDialog {
    public var access: Int;
    public var currentDir: String;
    public var currentFile: String;
    public var currentPath: String;
    public var disableOverwriteWarning: Bool;
    public var displayMode: Int;
    public var mode: Int;
    public var showHiddenFiles: Bool;
    public function addFilter(filter: String): Void;
    public function clearFilters(): Void;
    public function getVbox(): VBoxContainer;
    public function invalidate(): Void;
    @:native("__new")
    public function new();
}
