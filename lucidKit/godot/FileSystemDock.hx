package lucidKit.godot;

@:native("godot.FileSystemDock")
extern class FileSystemDock extends VBoxContainer {
    public function canDropDataFw(point: GdVector2, data: Variant, from: Control): Bool;
    public function dropDataFw(point: GdVector2, data: Variant, from: Control): Void;
    public function getDragDataFw(point: GdVector2, from: Control): Variant;
    public function navigateToPath(path: String): Void;
    @:native("__new")
    public function new();
}
