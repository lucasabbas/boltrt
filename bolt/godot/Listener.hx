package bolt.godot;

class ListenerMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ListenerPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ListenerPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ListenerSignalNames {
}
@:native("godot.Listener")
extern class Listener extends Spatial {
    public function clearCurrent(): Void;
    public function getListenerTransform(): Transform;
    public function isCurrent(): Bool;
    public function makeCurrent(): Void;
    @:native("__new")
    public function new();
}
