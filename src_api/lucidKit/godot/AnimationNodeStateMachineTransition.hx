package lucidKit.godot;

@:native("godot.AnimationNodeStateMachineTransition")
extern class AnimationNodeStateMachineTransition extends Resource {
    public var advanceCondition: String;
    public var autoAdvance: Bool;
    public var disabled: Bool;
    public var priority: Int;
    public var switchMode: Int;
    public var xfadeTime: Float;
    @:native("__new")
    public function new();
}
