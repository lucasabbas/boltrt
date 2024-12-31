package lucidKit.godot;

class TweenerSignalNames {
    public static var finished: String = "finished";
}
@:native("godot.Tweener")
extern class Tweener extends Reference {
    @:native("__new")
    public function new();
}
