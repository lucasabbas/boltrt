package lucidKit.godot;

class VisualShaderNodeInputSignalNames {
    public static var inputTypeChanged: String = "input_type_changed";
}
@:native("godot.VisualShaderNodeInput")
extern class VisualShaderNodeInput extends VisualShaderNode {
    public var inputName: String;
    public function getInputRealName(): String;
    @:native("__new")
    public function new();
}
