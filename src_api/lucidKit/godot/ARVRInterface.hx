package lucidKit.godot;

@:native("godot.ARVRInterface")
extern class ARVRInterface extends Reference {
    public var ar_is_anchor_detection_enabled: Bool;
    public var interface_is_initialized: Bool;
    public var interface_is_primary: Bool;
    public function get_camera_feed_id(): Int;
    public function get_capabilities(): Int;
    public function get_name(): String;
    public function get_render_targetsize(): Vector2;
    public function get_tracking_status(): Int;
    public function get_transform_for_eye(eye: Int, transform: Transform): Transform;
    public function initialize(): Bool;
    public function is_stereo(): Bool;
    public function uninitialize(): Void;
    @:native("__new")
    public function new();
}
