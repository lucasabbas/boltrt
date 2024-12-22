package lucidKit.godot;

@:native("godot.ViewportContainer")
extern class ViewportContainer extends Container {
    public var stretch: Bool;
    public var stretch_shrink: Int;
    @:native("__new")
    public function new();
}
