package magicrt.godot;

class ButtonGroupSignalNames {
    public static var pressed: String = "pressed";
}
@:native("godot.ButtonGroup")
extern class ButtonGroup extends Resource {
    public function getButtons(): Array<Dynamic>;
    public function getPressedButton(): BaseButton;
    @:native("__new")
    public function new();
}
