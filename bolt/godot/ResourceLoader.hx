package bolt.godot;

class ResourceLoaderSignalNames {
}
@:native("godot.ResourceLoader")
extern class ResourceLoader extends Object {
    public function exists(path: String, typeHint: String): Bool;
    public function getDependencies(path: String): lua.Table[Int, String];
    public function getRecognizedExtensionsForType(type: String): lua.Table[Int, String];
    public function has(path: String): Bool;
    public function hasCached(path: String): Bool;
    public function load(path: String, typeHint: String, noCache: Bool = false): Resource;
    public function loadInteractive(path: String, typeHint: String, noCache: Bool = false): ResourceInteractiveLoader;
    public function setAbortOnMissingResources(abort: Bool): Void;
    @:native("__new")
    public function new();
}
