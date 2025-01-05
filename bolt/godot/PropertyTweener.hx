package bolt.godot;

class PropertyTweenerSignalNames {
}
@:native("godot.PropertyTweener")
extern class PropertyTweener extends Tweener {
    public function asRelative(): PropertyTweener;
    public function from(value: Dynamic): PropertyTweener;
    public function fromCurrent(): PropertyTweener;
    public function setDelay(delay: Float): PropertyTweener;
    public function setEase(ease: Int): PropertyTweener;
    public function setTrans(trans: Int): PropertyTweener;
    @:native("__new")
    public function new();
}
