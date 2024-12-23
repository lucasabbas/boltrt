package lucidKit.godot;

@:native("godot.SceneTreeTween")
extern class SceneTreeTween extends Reference {
    public function bindNode(node: Node): SceneTreeTween;
    public function chain(): SceneTreeTween;
    public function customStep(delta: Float): Bool;
    public function getTotalElapsedTime(): Float;
    public function interpolateValue(initialValue: Variant, deltaValue: Variant, elapsedTime: Float, duration: Float, transType: Int, easeType: Int): Variant;
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
    public function tweenMethod(object: Object, method: String, from: Variant, to: Variant, duration: Float, binds: Array<Dynamic>): MethodTweener;
    public function tweenProperty(object: Object, property: NodePath, finalVal: Variant, duration: Float): PropertyTweener;
    @:native("__new")
    public function new();
}
