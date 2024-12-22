package lucidKit.godot;

@:native("godot.GraphEdit")
extern class GraphEdit extends Control {
    public var minimap_enabled: Bool;
    public var minimap_opacity: Float;
    public var minimap_size: Vector2;
    public var right_disconnects: Bool;
    public var scroll_offset: Vector2;
    public var show_zoom_label: Bool;
    public var snap_distance: Int;
    public var use_snap: Bool;
    public var zoom: Float;
    public var zoom_max: Float;
    public var zoom_min: Float;
    public var zoom_step: Float;
    public function add_valid_connection_type(from_type: Int, to_type: Int): Void;
    public function add_valid_left_disconnect_type(type: Int): Void;
    public function add_valid_right_disconnect_type(type: Int): Void;
    public function clear_connections(): Void;
    public function connect_node(from: String, from_port: Int, to: String, to_port: Int): Int;
    public function disconnect_node(from: String, from_port: Int, to: String, to_port: Int): Void;
    public function get_connection_list(): Array<Dynamic>;
    public function get_zoom_hbox(): HBoxContainer;
    public function is_node_connected(from: String, from_port: Int, to: String, to_port: Int): Bool;
    public function is_valid_connection_type(from_type: Int, to_type: Int): Bool;
    public function remove_valid_connection_type(from_type: Int, to_type: Int): Void;
    public function remove_valid_left_disconnect_type(type: Int): Void;
    public function remove_valid_right_disconnect_type(type: Int): Void;
    public function set_connection_activity(from: String, from_port: Int, to: String, to_port: Int, amount: Float): Void;
    public function set_selected(node: Node): Void;
    @:native("__new")
    public function new();
}
