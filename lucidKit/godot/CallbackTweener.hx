package lucidKit.godot;

class CallbackTweenerSignalNames {
}
@:native("godot.CallbackTweener")
extern class CallbackTweener extends Tweener {
    public function setDelay(delay: Float): CallbackTweener;
    @:native("__new")
    public function new();
}
