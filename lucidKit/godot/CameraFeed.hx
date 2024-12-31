package lucidKit.godot;

class CameraFeedSignalNames {
}
@:native("godot.CameraFeed")
extern class CameraFeed extends Reference {
    public var feedIsActive: Bool;
    public var feedTransform: Transform2D;
    public function getId(): Int;
    public function getName(): String;
    public function getPosition(): Int;
    @:native("__new")
    public function new();
}
