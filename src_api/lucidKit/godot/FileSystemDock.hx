package lucidkit.godot;

@:native("godot.FileSystemDock")
extern class FileSystemDock extends VBoxContainer {
    public function can_drop_data_fw(point: GdVector2, data: Variant, from: Control): Bool;
    public function drop_data_fw(point: GdVector2, data: Variant, from: Control): Void;
    public function get_drag_data_fw(point: GdVector2, from: Control): Variant;
    public function navigate_to_path(path: String): Void;
}
