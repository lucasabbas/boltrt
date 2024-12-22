package lucidKit.godot;

@:native("godot.SceneTreeTimer")
extern class SceneTreeTimer extends Reference {
    public var timeLeft: Float;
    @:native("__new")
    public function new();
}
