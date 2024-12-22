package lucidKit.godot;

@:native("godot.SpinBox")
extern class SpinBox extends Range {
    public var align: Int;
    public var custom_arrow_step: Float;
    public var editable: Bool;
    public var prefix: String;
    public var suffix: String;
    public function apply(): Void;
    public function get_line_edit(): LineEdit;
    @:native("__new")
    public function new();
}
