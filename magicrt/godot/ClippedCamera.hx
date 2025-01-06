package magicrt.godot;

class ClippedCameraProcessMode {
    public static var Physics: Int = 0;
    public static var Idle: Int = 1;
}
class ClippedCameraKeepAspect {
    public static var Width: Int = 0;
    public static var Height: Int = 1;
}
class ClippedCameraDopplerTracking {
    public static var Disabled: Int = 0;
    public static var IdleStep: Int = 1;
    public static var PhysicsStep: Int = 2;
}
class ClippedCameraProjection {
    public static var Perspective: Int = 0;
    public static var Orthogonal: Int = 1;
    public static var Frustum: Int = 2;
}
class ClippedCameraMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ClippedCameraPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ClippedCameraPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ClippedCameraSignalNames {
}
@:native("godot.ClippedCamera")
extern class ClippedCamera extends Camera {
    public var clipToAreas: Bool;
    public var clipToBodies: Bool;
    public var collisionMask: Int;
    public var margin: Float;
    public var processMode: Int;
    public function addException(node: Object): Void;
    public function addExceptionRid(rid: RID): Void;
    public function clearExceptions(): Void;
    public function getClipOffset(): Float;
    public function getCollisionMaskBit(bit: Int): Bool;
    public function removeException(node: Object): Void;
    public function removeExceptionRid(rid: RID): Void;
    public function setCollisionMaskBit(bit: Int, value: Bool): Void;
    @:native("__new")
    public function new();
}
