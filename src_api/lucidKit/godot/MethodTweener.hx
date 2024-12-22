package lucidkit.godot;

@:native("godot.MethodTweener")
extern class MethodTweener extends Tweener {
    public function set_delay(delay: Float): MethodTweener;
    public function set_ease(ease: Int): MethodTweener;
    public function set_trans(trans: Int): MethodTweener;
}
