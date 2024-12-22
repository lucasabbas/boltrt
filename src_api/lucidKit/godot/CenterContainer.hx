package lucidKit.godot;

@:native("godot.CenterContainer")
extern class CenterContainer extends Container {
    public var use_top_left: Bool;
    @:native("__new")
    public function new();
}
