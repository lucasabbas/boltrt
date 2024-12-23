package lucidKit.godot;

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
