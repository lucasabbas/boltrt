package lucidKit.godot;

@:native("godot.ARVRController")
extern class ARVRController extends Spatial {
    public var controller_id: Int;
    public var rumble: Float;
    public function get_controller_name(): String;
    public function get_hand(): Int;
    public function get_is_active(): Bool;
    public function get_joystick_axis(axis: Int): Float;
    public function get_joystick_id(): Int;
    public function get_mesh(): Mesh;
    public function is_button_pressed(button: Int): Int;
    @:native("__new")
    public function new();
}
