package lucidKit.godot;

@:native("godot.ButtonGroup")
extern class ButtonGroup extends Resource {
    public var resource_local_to_scene: Bool;
    public function get_buttons(): Array<Dynamic>;
    public function get_pressed_button(): BaseButton;
    @:native("__new")
    public function new();
}
