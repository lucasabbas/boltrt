package lucidKit.godot;

@:native("godot.CameraTexture")
extern class CameraTexture extends Texture {
    public var cameraFeedId: Int;
    public var cameraIsActive: Bool;
    public var whichFeed: Int;
    @:native("__new")
    public function new();
}
