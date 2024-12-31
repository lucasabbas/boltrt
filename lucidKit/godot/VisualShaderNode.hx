package lucidKit.godot;

class VisualShaderNodeSignalNames {
    public static var editorRefreshRequest: String = "editor_refresh_request";
}
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
