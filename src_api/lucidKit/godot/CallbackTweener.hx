package lucidKit.godot;

@:native("godot.CallbackTweener")
extern class CallbackTweener extends Tweener {
    public function set_delay(delay: Float): CallbackTweener;
    @:native("__new")
    public function new();
}
