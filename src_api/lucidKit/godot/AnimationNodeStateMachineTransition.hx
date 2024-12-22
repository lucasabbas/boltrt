package lucidKit.godot;

@:native("godot.AnimationNodeStateMachineTransition")
extern class AnimationNodeStateMachineTransition extends Resource {
    public var advance_condition: String;
    public var auto_advance: Bool;
    public var disabled: Bool;
    public var priority: Int;
    public var switch_mode: Int;
    public var xfade_time: Float;
    @:native("__new")
    public function new();
}
