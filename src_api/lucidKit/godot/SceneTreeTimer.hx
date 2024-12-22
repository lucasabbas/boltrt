package lucidKit.godot;

@:native("godot.SceneTreeTimer")
extern class SceneTreeTimer extends Reference {
    public var time_left: Float;
    @:native("__new")
    public function new();
}
