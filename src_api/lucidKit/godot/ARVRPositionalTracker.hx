package lucidKit.godot;

@:native("godot.ARVRPositionalTracker")
extern class ARVRPositionalTracker extends Reference {
    public var rumble: Float;
    public function get_hand(): Int;
    public function get_joy_id(): Int;
    public function get_mesh(): Mesh;
    public function get_name(): String;
    public function get_orientation(): Basis;
    public function get_position(): Vector3;
    public function get_tracker_id(): Int;
    public function get_tracks_orientation(): Bool;
    public function get_tracks_position(): Bool;
    public function get_transform(adjust_by_reference_frame: Bool): Transform;
    public function get_type(): Int;
    @:native("__new")
    public function new();
}
