package lucidKit.godot;

@:native("godot.CameraFeed")
extern class CameraFeed extends Reference {
    public var feed_is_active: Bool;
    public var feed_transform: Transform2D;
    public function get_id(): Int;
    public function get_name(): String;
    public function get_position(): Int;
    @:native("__new")
    public function new();
}
