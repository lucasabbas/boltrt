package lucidKit.godot;

@:native("godot.VisualShaderNode")
extern class VisualShaderNode extends Resource {
    public var output_port_for_preview: Int;
    public function get_default_input_values(): Array<Dynamic>;
    public function get_input_port_default_value(port: Int): Variant;
    public function set_default_input_values(values: Array<Dynamic>): Void;
    public function set_input_port_default_value(port: Int, value: Variant): Void;
    @:native("__new")
    public function new();
}
