package lucidKit.godot;

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
