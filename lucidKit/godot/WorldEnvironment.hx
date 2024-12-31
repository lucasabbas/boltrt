package lucidKit.godot;

class WorldEnvironmentPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class WorldEnvironmentPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class WorldEnvironmentSignalNames {
}
@:native("godot.WorldEnvironment")
extern class WorldEnvironment extends Node {
    public var environment: Environment;
    @:native("__new")
    public function new();
}
