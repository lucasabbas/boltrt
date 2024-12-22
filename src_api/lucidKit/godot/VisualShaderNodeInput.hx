package lucidkit.godot;

@:native("godot.VisualShaderNodeInput")
extern class VisualShaderNodeInput extends VisualShaderNode {
    public var input_name: String;
    public function get_input_real_name(): String;
}
