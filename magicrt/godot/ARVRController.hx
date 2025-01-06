package magicrt.godot;

class ARVRControllerMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ARVRControllerPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ARVRControllerPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ARVRControllerSignalNames {
    public static var buttonPressed: String = "button_pressed";
    public static var buttonRelease: String = "button_release";
    public static var meshUpdated: String = "mesh_updated";
}
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
