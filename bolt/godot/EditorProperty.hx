package bolt.godot;

class EditorPropertySignalNames {
    public static var multiplePropertiesChanged: String = "multiple_properties_changed";
    public static var objectIdSelected: String = "object_id_selected";
    public static var propertyChanged: String = "property_changed";
    public static var propertyChecked: String = "property_checked";
    public static var propertyKeyed: String = "property_keyed";
    public static var propertyKeyedWithValue: String = "property_keyed_with_value";
    public static var propertyPinned: String = "property_pinned";
    public static var resourceSelected: String = "resource_selected";
    public static var selected: String = "selected";
}
@:native("godot.EditorProperty")
extern class EditorProperty extends Container {
    public var checkable: Bool;
    public var checked: Bool;
    public var drawRed: Bool;
    public var keying: Bool;
    public var label: String;
    public var readOnly: Bool;
    public function addFocusable(control: Control): Void;
    public function emitChanged(property: String, value: Dynamic, field: String, changing: Bool = false): Void;
    public function getEditedObject(): Object;
    public function getEditedProperty(): String;
    public function setBottomEditor(editor: Control): Void;
    public function updateProperty(): Void;
    @:native("__new")
    public function new();
}
