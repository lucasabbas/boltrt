package magicrt.godot;

class InstancePlaceholderPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class InstancePlaceholderPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class InstancePlaceholderSignalNames {
}
@:native("godot.InstancePlaceholder")
extern class InstancePlaceholder extends Node {
    public function createInstance(replace: Bool = false, customScene: PackedScene): Node;
    public function getInstancePath(): String;
    public function getStoredValues(withOrder: Bool = false): Map<Dynamic, Dynamic>;
    public function replaceByInstance(customScene: PackedScene): Void;
    @:native("__new")
    public function new();
}
