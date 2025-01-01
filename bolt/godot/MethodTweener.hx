package bolt.godot;

class MethodTweenerSignalNames {
}
@:native("godot.MethodTweener")
extern class MethodTweener extends Tweener {
    public function setDelay(delay: Float): MethodTweener;
    public function setEase(ease: Int): MethodTweener;
    public function setTrans(trans: Int): MethodTweener;
    @:native("__new")
    public function new();
}
