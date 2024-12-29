package lucidKit.godot;

@:native("godot.ARVRController")
extern class ARVRController extends Spatial {
    public var controllerId: Int;
    public var rumble: Float;
    public function getControllerName(): String;
    public function getHand(): Int;
    public function getIsActive(): Bool;
    public function getJoystickAxis(axis: Int): Float;
    public function getJoystickId(): Int;
    public function getMesh(): Mesh;
    public function isButtonPressed(button: Int): Int;
    @:native("__new")
    public function new();
}
