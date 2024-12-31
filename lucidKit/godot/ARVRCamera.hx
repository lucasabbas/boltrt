package lucidKit.godot;

class ARVRCameraKeepAspect {
    public static var Width: Int = 0;
    public static var Height: Int = 1;
}
class ARVRCameraDopplerTracking {
    public static var Disabled: Int = 0;
    public static var IdleStep: Int = 1;
    public static var PhysicsStep: Int = 2;
}
class ARVRCameraProjection {
    public static var Perspective: Int = 0;
    public static var Orthogonal: Int = 1;
    public static var Frustum: Int = 2;
}
class ARVRCameraMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ARVRCameraPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ARVRCameraPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ARVRCameraSignalNames {
}
@:native("godot.ARVRCamera")
extern class ARVRCamera extends Camera {
    @:native("__new")
    public function new();
}
