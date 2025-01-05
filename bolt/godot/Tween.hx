package bolt.godot;

class TweenPlaybackProcessMode {
    public static var Physics: Int = 0;
    public static var Idle: Int = 1;
}
class TweenPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class TweenPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class TweenSignalNames {
    public static var tweenAllCompleted: String = "tween_all_completed";
    public static var tweenCompleted: String = "tween_completed";
    public static var tweenStarted: String = "tween_started";
    public static var tweenStep: String = "tween_step";
}
@:native("godot.Tween")
extern class Tween extends Node {
    public var playbackProcessMode: Int;
    public var playbackSpeed: Float;
    public var repeat: Bool;
    public function followMethod(object: Object, method: String, initialVal: Dynamic, target: Object, targetMethod: String, duration: Float, transType: Int = 0, easeType: Int = 2, delay: Float = 0): Bool;
    public function followProperty(object: Object, property: NodePath, initialVal: Dynamic, target: Object, targetProperty: NodePath, duration: Float, transType: Int = 0, easeType: Int = 2, delay: Float = 0): Bool;
    public function getRuntime(): Float;
    public function interpolateCallback(object: Object, duration: Float, callback: String, arg1: Dynamic, arg2: Dynamic, arg3: Dynamic, arg4: Dynamic, arg5: Dynamic, arg6: Dynamic, arg7: Dynamic, arg8: Dynamic): Bool;
    public function interpolateDeferredCallback(object: Object, duration: Float, callback: String, arg1: Dynamic, arg2: Dynamic, arg3: Dynamic, arg4: Dynamic, arg5: Dynamic, arg6: Dynamic, arg7: Dynamic, arg8: Dynamic): Bool;
    public function interpolateMethod(object: Object, method: String, initialVal: Dynamic, finalVal: Dynamic, duration: Float, transType: Int = 0, easeType: Int = 2, delay: Float = 0): Bool;
    public function interpolateProperty(object: Object, property: NodePath, initialVal: Dynamic, finalVal: Dynamic, duration: Float, transType: Int = 0, easeType: Int = 2, delay: Float = 0): Bool;
    public function isActive(): Bool;
    public function remove(object: Object, key: String): Bool;
    public function removeAll(): Bool;
    public function reset(object: Object, key: String): Bool;
    public function resetAll(): Bool;
    public function resume(object: Object, key: String): Bool;
    public function resumeAll(): Bool;
    public function seek(time: Float): Bool;
    public function setActive(active: Bool): Void;
    public function start(): Bool;
    public function stop(object: Object, key: String): Bool;
    public function stopAll(): Bool;
    public function targetingMethod(object: Object, method: String, initial: Object, initialMethod: String, finalVal: Dynamic, duration: Float, transType: Int = 0, easeType: Int = 2, delay: Float = 0): Bool;
    public function targetingProperty(object: Object, property: NodePath, initial: Object, initialVal: NodePath, finalVal: Dynamic, duration: Float, transType: Int = 0, easeType: Int = 2, delay: Float = 0): Bool;
    public function tell(): Float;
    @:native("__new")
    public function new();
}
