package magicrt.godot;

class SceneTreeTweenSignalNames {
    public static var finished: String = "finished";
    public static var loopFinished: String = "loop_finished";
    public static var stepFinished: String = "step_finished";
}
@:native("godot.SceneTreeTween")
extern class SceneTreeTween extends Reference {
    public function bindNode(node: Node): SceneTreeTween;
    public function chain(): SceneTreeTween;
    public function customStep(delta: Float): Bool;
    public function getTotalElapsedTime(): Float;
    public function interpolateValue(initialValue: Dynamic, deltaValue: Dynamic, elapsedTime: Float, duration: Float, transType: Int, easeType: Int): Dynamic;
    public function isRunning(): Bool;
    public function isValid(): Bool;
    public function kill(): Void;
    public function parallel(): SceneTreeTween;
    public function pause(): Void;
    public function play(): Void;
    public function setEase(ease: Int): SceneTreeTween;
    public function setLoops(loops: Int = 0): SceneTreeTween;
    public function setParallel(parallel: Bool = true): SceneTreeTween;
    public function setPauseMode(mode: Int): SceneTreeTween;
    public function setProcessMode(mode: Int): SceneTreeTween;
    public function setSpeedScale(speed: Float): SceneTreeTween;
    public function setTrans(trans: Int): SceneTreeTween;
    public function stop(): Void;
    public function tweenCallback(object: Object, method: String, binds: Array<Dynamic>): CallbackTweener;
    public function tweenInterval(time: Float): IntervalTweener;
    public function tweenMethod(object: Object, method: String, from: Dynamic, to: Dynamic, duration: Float, binds: Array<Dynamic>): MethodTweener;
    public function tweenProperty(object: Object, property: NodePath, finalVal: Dynamic, duration: Float): PropertyTweener;
    @:native("__new")
    public function new();
}
