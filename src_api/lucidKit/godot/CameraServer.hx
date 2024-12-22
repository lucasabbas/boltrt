package lucidKit.godot;

@:native("godot.CameraServer")
extern class CameraServer extends Object {
    public function add_feed(feed: CameraFeed): Void;
    public function feeds(): Array<Dynamic>;
    public function get_feed(index: Int): CameraFeed;
    public function get_feed_count(): Int;
    public function remove_feed(feed: CameraFeed): Void;
    @:native("__new")
    public function new();
}
