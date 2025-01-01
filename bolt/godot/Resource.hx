package bolt.godot;

class ResourceSignalNames {
    public static var changed: String = "changed";
}
@:native("godot.Resource")
extern class Resource extends Reference {
    public var resourceLocalToScene: Bool;
    public var resourceName: String;
    public var resourcePath: String;
    public function SetupLocalToScene(): Void;
    public function duplicate(subresources: Bool = false): Resource;
    public function emitChanged(): Void;
    public function getLocalScene(): Node;
    public function getRid(): RID;
    public function setupLocalToScene(): Void;
    public function takeOverPath(path: String): Void;
    @:native("__new")
    public function new();
}
