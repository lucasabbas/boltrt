package lucidKit.godot;

@:native("godot.EditorFileSystemDirectory")
extern class EditorFileSystemDirectory extends Object {
    public function find_dir_index(name: String): Int;
    public function find_file_index(name: String): Int;
    public function get_file(idx: Int): String;
    public function get_file_count(): Int;
    public function get_file_import_is_valid(idx: Int): Bool;
    public function get_file_path(idx: Int): String;
    public function get_file_script_class_extends(idx: Int): String;
    public function get_file_script_class_name(idx: Int): String;
    public function get_file_type(idx: Int): String;
    public function get_name(): String;
    public function get_parent(): EditorFileSystemDirectory;
    public function get_path(): String;
    public function get_subdir(idx: Int): EditorFileSystemDirectory;
    public function get_subdir_count(): Int;
    @:native("__new")
    public function new();
}
