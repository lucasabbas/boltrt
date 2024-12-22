package lucidKit.godot;

@:native("godot.ViewportContainer")
extern class ViewportContainer extends Container {
    public var stretch: Bool;
    public var stretchShrink: Int;
    @:native("__new")
    public function new();
}
