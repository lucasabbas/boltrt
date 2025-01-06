package magicrt.godot;

class VisualShaderNodeSignalNames {
    public static var editorRefreshRequest: String = "editor_refresh_request";
}
@:native("godot.VisualShaderNode")
extern class VisualShaderNode extends Resource {
    public var outputPortForPreview: Int;
    public function getDefaultInputValues(): Array<Dynamic>;
    public function getInputPortDefaultValue(port: Int): Dynamic;
    public function setDefaultInputValues(values: Array<Dynamic>): Void;
    public function setInputPortDefaultValue(port: Int, value: Dynamic): Void;
    @:native("__new")
    public function new();
}
