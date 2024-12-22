package lucidKit.godot;

@:native("godot.SpinBox")
extern class SpinBox extends Range {
    public var align: Int;
    public var customArrowStep: Float;
    public var editable: Bool;
    public var prefix: String;
    public var suffix: String;
    public function apply(): Void;
    public function getLineEdit(): LineEdit;
    @:native("__new")
    public function new();
}
