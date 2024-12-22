package lucidKit.godot;

@:native("godot.AnimationNodeTransition")
extern class AnimationNodeTransition extends AnimationNode {
    public var inputCount: Int;
    public var xfadeTime: Float;
    public function getInputCaption(input: Int): String;
    public function isInputSetAsAutoAdvance(input: Int): Bool;
    public function setInputAsAutoAdvance(input: Int, enable: Bool): Void;
    public function setInputCaption(input: Int, caption: String): Void;
    @:native("__new")
    public function new();
}
