package lucidKit.godot;

@:native("godot.SplitContainer")
extern class SplitContainer extends Container {
    public var collapsed: Bool;
    public var draggerVisibility: Int;
    public var splitOffset: Int;
    public function clampSplitOffset(): Void;
    @:native("__new")
    public function new();
}
