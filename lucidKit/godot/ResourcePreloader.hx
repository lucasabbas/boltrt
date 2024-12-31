package lucidKit.godot;

class ResourcePreloaderPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ResourcePreloaderPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ResourcePreloaderSignalNames {
}
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
