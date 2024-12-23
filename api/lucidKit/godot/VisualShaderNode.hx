package lucidKit.godot;

@:native("godot.VisualShaderNode")
extern class VisualShaderNode extends Resource {
    public var outputPortForPreview: Int;
    public function getDefaultInputValues(): Array<Dynamic>;
    public function getInputPortDefaultValue(port: Int): Variant;
    public function setDefaultInputValues(values: Array<Dynamic>): Void;
    public function setInputPortDefaultValue(port: Int, value: Variant): Void;
    @:native("__new")
    public function new();
}
