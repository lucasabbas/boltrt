package magicrt.godot;

class TimerProcessMode {
    public static var Physics: Int = 0;
    public static var Idle: Int = 1;
}
class TimerPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class TimerPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class TimerSignalNames {
    public static var timeout: String = "timeout";
}
@:native("godot.Timer")
extern class Timer extends Node {
    public var autostart: Bool;
    public var oneShot: Bool;
    public var paused: Bool;
    public var processMode: Int;
    public var timeLeft: Float;
    public var waitTime: Float;
    public function isStopped(): Bool;
    public function start(timeSec: Float = -1): Void;
    public function stop(): Void;
    @:native("__new")
    public function new();
}
