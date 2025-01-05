package bolt.godot;

class FileSystemDockSignalNames {
    public static var displayModeChanged: String = "display_mode_changed";
    public static var fileRemoved: String = "file_removed";
    public static var filesMoved: String = "files_moved";
    public static var folderMoved: String = "folder_moved";
    public static var folderRemoved: String = "folder_removed";
    public static var inherit: String = "inherit";
    public static var instance: String = "instance";
}
@:native("godot.FileSystemDock")
extern class FileSystemDock extends VBoxContainer {
    public function canDropDataFw(point: GdVector2, data: Dynamic, from: Control): Bool;
    public function dropDataFw(point: GdVector2, data: Dynamic, from: Control): Void;
    public function getDragDataFw(point: GdVector2, from: Control): Dynamic;
    public function navigateToPath(path: String): Void;
    @:native("__new")
    public function new();
}
