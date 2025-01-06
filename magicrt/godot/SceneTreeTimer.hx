package magicrt.godot;

class SceneTreeTimerSignalNames {
    public static var timeout: String = "timeout";
}
@:native("godot.SceneTreeTimer")
extern class SceneTreeTimer extends Reference {
    public var timeLeft: Float;
    @:native("__new")
    public function new();
}
