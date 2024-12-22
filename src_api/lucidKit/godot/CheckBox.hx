package lucidKit.godot;

@:native("godot.CheckBox")
extern class CheckBox extends Button {
    public var align: Int;
    public var toggle_mode: Bool;
    @:native("__new")
    public function new();
}
