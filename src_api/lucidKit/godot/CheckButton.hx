package lucidKit.godot;

@:native("godot.CheckButton")
extern class CheckButton extends Button {
    public var align: Int;
    public var toggle_mode: Bool;
    @:native("__new")
    public function new();
}
