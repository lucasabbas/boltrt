package lucidKit.godot;

@:native("godot.Input")
extern class Input extends Object {
    public var mouse_mode: Int;
    public var use_accumulated_input: Bool;
    public function action_press(action: String, strength: Float): Void;
    public function action_release(action: String): Void;
    public function add_joy_mapping(mapping: String, update_existing: Bool): Void;
    public function flush_buffered_events(): Void;
    public function get_accelerometer(): Vector3;
    public function get_action_raw_strength(action: String, exact: Bool): Float;
    public function get_action_strength(action: String, exact: Bool): Float;
    public function get_axis(negative_action: String, positive_action: String): Float;
    public function get_connected_joypads(): Array<Dynamic>;
    public function get_current_cursor_shape(): Int;
    public function get_gravity(): Vector3;
    public function get_gyroscope(): Vector3;
    public function get_joy_axis(device: Int, axis: Int): Float;
    public function get_joy_axis_index_from_string(axis: String): Int;
    public function get_joy_axis_string(axis_index: Int): String;
    public function get_joy_button_index_from_string(button: String): Int;
    public function get_joy_button_string(button_index: Int): String;
    public function get_joy_guid(device: Int): String;
    public function get_joy_name(device: Int): String;
    public function get_joy_vibration_duration(device: Int): Float;
    public function get_joy_vibration_strength(device: Int): Vector2;
    public function get_last_mouse_speed(): Vector2;
    public function get_magnetometer(): Vector3;
    public function get_mouse_button_mask(): Int;
    public function get_vector(negative_x: String, positive_x: String, negative_y: String, positive_y: String, deadzone: Float): Vector2;
    public function is_action_just_pressed(action: String, exact: Bool): Bool;
    public function is_action_just_released(action: String, exact: Bool): Bool;
    public function is_action_pressed(action: String, exact: Bool): Bool;
    public function is_joy_button_pressed(device: Int, button: Int): Bool;
    public function is_joy_known(device: Int): Bool;
    public function is_key_pressed(scancode: Int): Bool;
    public function is_mouse_button_pressed(button: Int): Bool;
    public function is_physical_key_pressed(scancode: Int): Bool;
    public function joy_connection_changed(device: Int, connected: Bool, name: String, guid: String): Void;
    public function parse_input_event(event: InputEvent): Void;
    public function remove_joy_mapping(guid: String): Void;
    public function set_accelerometer(value: GdVector3): Void;
    public function set_custom_mouse_cursor(image: Resource, shape: Int, hotspot: GdVector2): Void;
    public function set_default_cursor_shape(shape: Int): Void;
    public function set_gravity(value: GdVector3): Void;
    public function set_gyroscope(value: GdVector3): Void;
    public function set_magnetometer(value: GdVector3): Void;
    public function should_ignore_device(vendor_id: Int, product_id: Int): Bool;
    public function start_joy_vibration(device: Int, weak_magnitude: Float, strong_magnitude: Float, duration: Float): Void;
    public function stop_joy_vibration(device: Int): Void;
    public function vibrate_handheld(duration_ms: Int): Void;
    public function warp_mouse_position(to: GdVector2): Void;
    @:native("__new")
    public function new();
}
