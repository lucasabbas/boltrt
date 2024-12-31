package lucidKit.godot;

class CameraServerSignalNames {
    public static var cameraFeedAdded: String = "camera_feed_added";
    public static var cameraFeedRemoved: String = "camera_feed_removed";
}
@:native("godot.CameraServer")
extern class CameraServer extends Object {
    public function addFeed(feed: CameraFeed): Void;
    public function feeds(): Array<Dynamic>;
    public function getFeed(index: Int): CameraFeed;
    public function getFeedCount(): Int;
    public function removeFeed(feed: CameraFeed): Void;
    @:native("__new")
    public function new();
}
