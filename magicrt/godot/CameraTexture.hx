package magicrt.godot;

class CameraTextureWhichFeed {
    public static var YcbcrImage: Int = 0;
    public static var YcbcrImage: Int = 0;
    public static var YcbcrImage: Int = 0;
    public static var CbcrImage: Int = 1;
}
class CameraTextureSignalNames {
}
@:native("godot.CameraTexture")
extern class CameraTexture extends Texture {
    public var cameraFeedId: Int;
    public var cameraIsActive: Bool;
    public var whichFeed: Int;
    @:native("__new")
    public function new();
}
