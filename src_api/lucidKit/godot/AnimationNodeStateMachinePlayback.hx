package lucidKit.godot;

@:native("godot.AnimationNodeStateMachinePlayback")
extern class AnimationNodeStateMachinePlayback extends Resource {
    public function getCurrentLength(): Float;
    public function getCurrentNode(): String;
    public function getCurrentPlayPosition(): Float;
    public function getTravelPath(): PoolStringArray;
    public function isPlaying(): Bool;
    public function start(node: String): Void;
    public function stop(): Void;
    public function travel(toNode: String): Void;
    @:native("__new")
    public function new();
}
