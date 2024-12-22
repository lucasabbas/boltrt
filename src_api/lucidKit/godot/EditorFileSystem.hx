package lucidkit.godot;

@:native("godot.EditorFileSystem")
extern class EditorFileSystem extends Node {
    public function get_file_type(path: String): String;
    public function get_filesystem(): EditorFileSystemDirectory;
    public function get_filesystem_path(path: String): EditorFileSystemDirectory;
    public function get_scanning_progress(): Float;
    public function is_scanning(): Bool;
    public function scan(): Void;
    public function scan_sources(): Void;
    public function update_file(path: String): Void;
    public function update_script_classes(): Void;
}
