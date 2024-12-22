package lucidkit.godot;

@:native("godot.Timer")
extern class Timer extends Node {
    public var autostart: Bool;
    public var one_shot: Bool;
    public var paused: Bool;
    public var process_mode: Int;
    public var time_left: Float;
    public var wait_time: Float;
    public function is_stopped(): Bool;
    public function start(time_sec: Float): Void;
    public function stop(): Void;
}
