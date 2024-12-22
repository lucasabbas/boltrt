package lucidKit.godot;

@:native("godot.VisualShaderNodeGroupBase")
extern class VisualShaderNodeGroupBase extends VisualShaderNode {
    public var size: Vector2;
    public function add_input_port(id: Int, type: Int, name: String): Void;
    public function add_output_port(id: Int, type: Int, name: String): Void;
    public function clear_input_ports(): Void;
    public function clear_output_ports(): Void;
    public function get_free_input_port_id(): Int;
    public function get_free_output_port_id(): Int;
    public function get_input_port_count(): Int;
    public function get_inputs(): String;
    public function get_output_port_count(): Int;
    public function get_outputs(): String;
    public function has_input_port(id: Int): Bool;
    public function has_output_port(id: Int): Bool;
    public function is_valid_port_name(name: String): Bool;
    public function remove_input_port(id: Int): Void;
    public function remove_output_port(id: Int): Void;
    public function set_input_port_name(id: Int, name: String): Void;
    public function set_input_port_type(id: Int, type: Int): Void;
    public function set_inputs(inputs: String): Void;
    public function set_output_port_name(id: Int, name: String): Void;
    public function set_output_port_type(id: Int, type: Int): Void;
    public function set_outputs(outputs: String): Void;
    @:native("__new")
    public function new();
}
