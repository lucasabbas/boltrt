package lucidKit.godot;

@:native("godot.FileDialog")
extern class FileDialog extends ConfirmationDialog {
    public var access: Int;
    public var current_dir: String;
    public var current_file: String;
    public var current_path: String;
    public var filters: PoolStringArray;
    public var mode: Int;
    public var mode_overrides_title: Bool;
    public var root_subfolder: String;
    public var show_hidden_files: Bool;
    public function add_filter(filter: String): Void;
    public function clear_filters(): Void;
    public function deselect_items(): Void;
    public function get_line_edit(): LineEdit;
    public function get_vbox(): VBoxContainer;
    public function invalidate(): Void;
    @:native("__new")
    public function new();
}
