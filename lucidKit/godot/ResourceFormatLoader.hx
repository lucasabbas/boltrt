package lucidKit.godot;

class ResourceFormatLoaderSignalNames {
}
@:native("godot.ResourceFormatLoader")
extern class ResourceFormatLoader extends Reference {
    public function getDependencies(path: String, addTypes: String): Void;
    public function getRecognizedExtensions(): PoolStringArray;
    public function getResourceType(path: String): String;
    public function handlesType(typename: String): Bool;
    public function load(path: String, originalPath: String, noSubresourceCache: Bool): Variant;
    public function renameDependencies(path: String, renames: String): Int;
    @:native("__new")
    public function new();
}
