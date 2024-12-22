package lucidkit.godot;

@:native("godot.SceneTree")
extern class SceneTree extends MainLoop {
    public var auto_accept_quit: Bool;
    public var current_scene: Node;
    public var debug_collisions_hint: Bool;
    public var debug_navigation_hint: Bool;
    public var edited_scene_root: Node;
    public var multiplayer: MultiplayerAPI;
    public var multiplayer_poll: Bool;
    public var network_peer: NetworkedMultiplayerPeer;
    public var paused: Bool;
    public var physics_interpolation: Bool;
    public var quit_on_go_back: Bool;
    public var refuse_new_network_connections: Bool;
    public var root: Viewport;
    public var use_font_oversampling: Bool;
    public function call_group(group: String, method: String): Variant;
    public function call_group_flags(flags: Int, group: String, method: String): Variant;
    public function change_scene(path: String): Int;
    public function change_scene_to(packed_scene: PackedScene): Int;
    public function create_timer(time_sec: Float, pause_mode_process: Bool): SceneTreeTimer;
    public function create_tween(): SceneTreeTween;
    public function get_first_node_in_group(group: String): Node;
    public function get_frame(): Int;
    public function get_network_connected_peers(): PoolIntArray;
    public function get_network_unique_id(): Int;
    public function get_node_count(): Int;
    public function get_nodes_in_group(group: String): Array<Dynamic>;
    public function get_processed_tweens(): Array<Dynamic>;
    public function get_rpc_sender_id(): Int;
    public function has_group(name: String): Bool;
    public function has_network_peer(): Bool;
    public function is_input_handled(): Bool;
    public function is_network_server(): Bool;
    public function notify_group(group: String, notification: Int): Void;
    public function notify_group_flags(call_flags: Int, group: String, notification: Int): Void;
    public function queue_delete(obj: Object): Void;
    public function quit(exit_code: Int): Void;
    public function reload_current_scene(): Int;
    public function set_group(group: String, property: String, value: Variant): Void;
    public function set_group_flags(call_flags: Int, group: String, property: String, value: Variant): Void;
    public function set_input_as_handled(): Void;
    public function set_screen_stretch(mode: Int, aspect: Int, minsize: GdVector2, scale: Float): Void;
}
