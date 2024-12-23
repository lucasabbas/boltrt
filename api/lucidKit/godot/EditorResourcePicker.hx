package lucidKit.godot;

@:native("godot.EditorResourcePicker")
extern class EditorResourcePicker extends HBoxContainer {
    public var baseType: String;
    public var editable: Bool;
    public var editedResource: Resource;
    public var toggleMode: Bool;
    public function canDropDataFw(position: GdVector2, data: Variant, from: Control): Bool;
    public function dropDataFw(position: GdVector2, data: Variant, from: Control): Void;
    public function getAllowedTypes(): PoolStringArray;
    public function getDragDataFw(position: GdVector2, from: Control): Variant;
    public function handleMenuSelected(id: Int): Bool;
    public function setCreateOptions(menuNode: Object): Void;
    public function setTogglePressed(pressed: Bool): Void;
    @:native("__new")
    public function new();
}
