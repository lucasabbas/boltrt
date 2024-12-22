package lucidKit.godot;

@:native("godot.AcceptDialog")
extern class AcceptDialog extends WindowDialog {
    public var dialogAutowrap: Bool;
    public var dialogHideOnOk: Bool;
    public var dialogText: String;
    public function addButton(text: String, right: Bool = false, action: String): Button;
    public function addCancel(name: String): Button;
    public function getLabel(): Label;
    public function getOk(): Button;
    public function registerTextEnter(lineEdit: Node): Void;
    public function removeButton(button: Control): Void;
    @:native("__new")
    public function new();
}
