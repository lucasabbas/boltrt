package lucidKit.godot;

@:native("godot.ARVRServer")
extern class ARVRServer extends Object {
    public var primary_interface: ARVRInterface;
    public var world_scale: Float;
    public function add_interface(interface: ARVRInterface): Void;
    public function add_tracker(tracker: ARVRPositionalTracker): Void;
    public function center_on_hmd(rotation_mode: Int, keep_height: Bool): Void;
    public function clear_primary_interface_if(interface: ARVRInterface): Void;
    public function find_interface(name: String): ARVRInterface;
    public function get_hmd_transform(): Transform;
    public function get_interface(idx: Int): ARVRInterface;
    public function get_interface_count(): Int;
    public function get_interfaces(): Array<Dynamic>;
    public function get_last_commit_usec(): Int;
    public function get_last_frame_usec(): Int;
    public function get_last_process_usec(): Int;
    public function get_reference_frame(): Transform;
    public function get_tracker(idx: Int): ARVRPositionalTracker;
    public function get_tracker_count(): Int;
    public function remove_interface(interface: ARVRInterface): Void;
    public function remove_tracker(tracker: ARVRPositionalTracker): Void;
    @:native("__new")
    public function new();
}
