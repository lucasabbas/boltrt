package bolt.godot;

class EditorResourcePickerSignalNames {
    public static var resourceChanged: String = "resource_changed";
    public static var resourceSelected: String = "resource_selected";
}
@:native("godot.EditorResourcePicker")
extern class EditorResourcePicker extends HBoxContainer {
    public var baseType: String;
    public var editable: Bool;
    public var editedResource: Resource;
    public var toggleMode: Bool;
    public function canDropDataFw(position: GdVector2, data: Dynamic, from: Control): Bool;
    public function dropDataFw(position: GdVector2, data: Dynamic, from: Control): Void;
    public function getAllowedTypes(): lua.Table<Int, String>;
    public function getDragDataFw(position: GdVector2, from: Control): Dynamic;
    public function handleMenuSelected(id: Int): Bool;
    public function setCreateOptions(menuNode: Object): Void;
    public function setTogglePressed(pressed: Bool): Void;
    @:native("__new")
    public function new();
}
