package lucidKit.godot;

@:native("godot.ResourcePreloader")
extern class ResourcePreloader extends Node {
    public function addResource(name: String, resource: Resource): Void;
    public function getResource(name: String): Resource;
    public function getResourceList(): PoolStringArray;
    public function hasResource(name: String): Bool;
    public function removeResource(name: String): Void;
    public function renameResource(name: String, newname: String): Void;
    @:native("__new")
    public function new();
}
