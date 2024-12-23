package lucidKit.godot;

@:native("godot.EditorProperty")
extern class EditorProperty extends Container {
    public var checkable: Bool;
    public var checked: Bool;
    public var drawRed: Bool;
    public var keying: Bool;
    public var label: String;
    public var readOnly: Bool;
    public function addFocusable(control: Control): Void;
    public function emitChanged(property: String, value: Variant, field: String, changing: Bool = false): Void;
    public function getEditedObject(): Object;
    public function getEditedProperty(): String;
    public function setBottomEditor(editor: Control): Void;
    public function updateProperty(): Void;
    @:native("__new")
    public function new();
}
