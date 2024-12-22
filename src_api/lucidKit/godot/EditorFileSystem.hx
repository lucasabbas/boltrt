package lucidKit.godot;

@:native("godot.EditorFileSystem")
extern class EditorFileSystem extends Node {
    public function getFileType(path: String): String;
    public function getFilesystem(): EditorFileSystemDirectory;
    public function getFilesystemPath(path: String): EditorFileSystemDirectory;
    public function getScanningProgress(): Float;
    public function isScanning(): Bool;
    public function scan(): Void;
    public function scanSources(): Void;
    public function updateFile(path: String): Void;
    public function updateScriptClasses(): Void;
    @:native("__new")
    public function new();
}
