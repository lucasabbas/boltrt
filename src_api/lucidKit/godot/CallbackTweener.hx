package lucidkit.godot;

@:native("godot.CallbackTweener")
extern class CallbackTweener extends Tweener {
    public function set_delay(delay: Float): CallbackTweener;
}
