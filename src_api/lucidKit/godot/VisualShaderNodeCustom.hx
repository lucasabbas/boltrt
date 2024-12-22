package lucidkit.godot;

@:native("godot.VisualShaderNodeCustom")
extern class VisualShaderNodeCustom extends VisualShaderNode {
    public function _get_category(): String;
    public function _get_code(input_vars: Array<Dynamic>, output_vars: Array<Dynamic>, mode: Int, type: Int): String;
    public function _get_description(): String;
    public function _get_global_code(mode: Int): String;
    public function _get_input_port_count(): Int;
    public function _get_input_port_name(port: Int): String;
    public function _get_input_port_type(port: Int): Int;
    public function _get_name(): String;
    public function _get_output_port_count(): Int;
    public function _get_output_port_name(port: Int): String;
    public function _get_output_port_type(port: Int): Int;
    public function _get_return_icon_type(): Int;
    public function _get_subcategory(): String;
}
