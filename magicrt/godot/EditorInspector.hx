package magicrt.godot;

class EditorInspectorSignalNames {
    public static var objectIdSelected: String = "object_id_selected";
    public static var propertyEdited: String = "property_edited";
    public static var propertyKeyed: String = "property_keyed";
    public static var propertySelected: String = "property_selected";
    public static var propertyToggled: String = "property_toggled";
    public static var resourceSelected: String = "resource_selected";
    public static var restartRequested: String = "restart_requested";
}
@:native("godot.EditorInspector")
extern class EditorInspector extends ScrollContainer {
    public function getEditedObject(): Object;
    public function refresh(): Void;
    @:native("__new")
    public function new();
}
