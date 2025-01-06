package magicrt.godot;

class VisualShaderNodeCustomSignalNames {
}
@:native("godot.VisualShaderNodeCustom")
extern class VisualShaderNodeCustom extends VisualShaderNode {
    public function GetCategory(): String;
    public function GetCode(inputVars: Array<Dynamic>, outputVars: Array<Dynamic>, mode: Int, type: Int): String;
    public function GetDescription(): String;
    public function GetGlobalCode(mode: Int): String;
    public function GetInputPortCount(): Int;
    public function GetInputPortName(port: Int): String;
    public function GetInputPortType(port: Int): Int;
    public function GetName(): String;
    public function GetOutputPortCount(): Int;
    public function GetOutputPortName(port: Int): String;
    public function GetOutputPortType(port: Int): Int;
    public function GetReturnIconType(): Int;
    public function GetSubcategory(): String;
    @:native("__new")
    public function new();
}
