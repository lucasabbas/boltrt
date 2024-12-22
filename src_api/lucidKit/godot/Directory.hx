package lucidkit.godot;

@:native("godot.Directory")
extern class Directory extends Reference {
    public function change_dir(todir: String): Int;
    public function copy(from: String, to: String): Int;
    public function current_is_dir(): Bool;
    public function dir_exists(path: String): Bool;
    public function file_exists(path: String): Bool;
    public function get_current_dir(): String;
    public function get_current_drive(): Int;
    public function get_drive(idx: Int): String;
    public function get_drive_count(): Int;
    public function get_next(): String;
    public function get_space_left(): Int;
    public function list_dir_begin(skip_navigational: Bool, skip_hidden: Bool): Int;
    public function list_dir_end(): Void;
    public function make_dir(path: String): Int;
    public function make_dir_recursive(path: String): Int;
    public function open(path: String): Int;
    public function remove(path: String): Int;
    public function rename(from: String, to: String): Int;
}
