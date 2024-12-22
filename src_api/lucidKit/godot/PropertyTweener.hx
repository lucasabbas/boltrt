package lucidkit.godot;

@:native("godot.PropertyTweener")
extern class PropertyTweener extends Tweener {
    public function as_relative(): PropertyTweener;
    public function from(value: Variant): PropertyTweener;
    public function from_current(): PropertyTweener;
    public function set_delay(delay: Float): PropertyTweener;
    public function set_ease(ease: Int): PropertyTweener;
    public function set_trans(trans: Int): PropertyTweener;
}
