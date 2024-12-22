package lucidKit.godot;

@:native("godot.CameraTexture")
extern class CameraTexture extends Texture {
    public var camera_feed_id: Int;
    public var camera_is_active: Bool;
    public var flags: Int;
    public var which_feed: Int;
    @:native("__new")
    public function new();
}
