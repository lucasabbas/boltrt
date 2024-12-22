package lucidKit.godot;

@:native("godot.Tween")
extern class Tween extends Node {
    public var playbackProcessMode: Int;
    public var playbackSpeed: Float;
    public var repeat: Bool;
    public function followMethod(object: Object, method: String, initialVal: Variant, target: Object, targetMethod: String, duration: Float, transType: Int = 0, easeType: Int = 2, delay: Float = 0): Bool;
    public function followProperty(object: Object, property: NodePath, initialVal: Variant, target: Object, targetProperty: NodePath, duration: Float, transType: Int = 0, easeType: Int = 2, delay: Float = 0): Bool;
    public function getRuntime(): Float;
    public function interpolateCallback(object: Object, duration: Float, callback: String, arg1: Variant, arg2: Variant, arg3: Variant, arg4: Variant, arg5: Variant, arg6: Variant, arg7: Variant, arg8: Variant): Bool;
    public function interpolateDeferredCallback(object: Object, duration: Float, callback: String, arg1: Variant, arg2: Variant, arg3: Variant, arg4: Variant, arg5: Variant, arg6: Variant, arg7: Variant, arg8: Variant): Bool;
    public function interpolateMethod(object: Object, method: String, initialVal: Variant, finalVal: Variant, duration: Float, transType: Int = 0, easeType: Int = 2, delay: Float = 0): Bool;
    public function interpolateProperty(object: Object, property: NodePath, initialVal: Variant, finalVal: Variant, duration: Float, transType: Int = 0, easeType: Int = 2, delay: Float = 0): Bool;
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
    public function targetingMethod(object: Object, method: String, initial: Object, initialMethod: String, finalVal: Variant, duration: Float, transType: Int = 0, easeType: Int = 2, delay: Float = 0): Bool;
    public function targetingProperty(object: Object, property: NodePath, initial: Object, initialVal: NodePath, finalVal: Variant, duration: Float, transType: Int = 0, easeType: Int = 2, delay: Float = 0): Bool;
    public function tell(): Float;
    @:native("__new")
    public function new();
}
