package lucidKit.godot;

class InterpolatedCameraProcessMode {
    public static var Physics: Int = 0;
    public static var Idle: Int = 1;
}
class InterpolatedCameraKeepAspect {
    public static var Width: Int = 0;
    public static var Height: Int = 1;
}
class InterpolatedCameraDopplerTracking {
    public static var Disabled: Int = 0;
    public static var IdleStep: Int = 1;
    public static var PhysicsStep: Int = 2;
}
class InterpolatedCameraProjection {
    public static var Perspective: Int = 0;
    public static var Orthogonal: Int = 1;
    public static var Frustum: Int = 2;
}
class InterpolatedCameraMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class InterpolatedCameraPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class InterpolatedCameraPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class InterpolatedCameraSignalNames {
}
@:native("godot.InterpolatedCamera")
extern class InterpolatedCamera extends Camera {
    public var enabled: Bool;
    public var processMode: Int;
    public var speed: Float;
    public var target: NodePath;
    public function setTarget(target: Object): Void;
    @:native("__new")
    public function new();
}
