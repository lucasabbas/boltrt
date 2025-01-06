package magicrt.godot;

class AnimationNodeStateMachineTransitionSwitchMode {
    public static var Immediate: Int = 0;
    public static var Sync: Int = 1;
    public static var AtEnd: Int = 2;
}
class AnimationNodeStateMachineTransitionSignalNames {
    public static var advanceConditionChanged: String = "advance_condition_changed";
}
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
