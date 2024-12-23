package lucidKit.godot;

@:native("godot.FlowContainer")
extern class FlowContainer extends Container {
    public var alignment: Int;
    public function getLineCount(): Int;
    @:native("__new")
    public function new();
}
