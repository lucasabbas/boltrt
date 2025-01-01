package bolt.godot;

class KinematicBodyMovingPlatformApplyVelocityOnLeave {
    public static var Always: Int = 0;
    public static var UpwardOnly: Int = 1;
    public static var Never: Int = 2;
}
class KinematicBodyMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class KinematicBodyPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class KinematicBodyPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class KinematicBodySignalNames {
}
@:native("godot.KinematicBody")
extern class KinematicBody extends PhysicsBody {
    public var axisLockMotionX: Bool;
    public var axisLockMotionY: Bool;
    public var axisLockMotionZ: Bool;
    public var collisionSafeMargin: Float;
    public var motionSyncToPhysics: Bool;
    public var moveLockX: Bool;
    public var moveLockY: Bool;
    public var moveLockZ: Bool;
    public var movingPlatformApplyVelocityOnLeave: Int;
    public function getAxisLock(axis: Int): Bool;
    public function getFloorAngle(upDirection: GdVector3): Float;
    public function getFloorNormal(): Vector3;
    public function getFloorVelocity(): Vector3;
    public function getLastSlideCollision(): KinematicCollision;
    public function getSlideCollision(slideIdx: Int): KinematicCollision;
    public function getSlideCount(): Int;
    public function isOnCeiling(): Bool;
    public function isOnFloor(): Bool;
    public function isOnWall(): Bool;
    public function moveAndCollide(relVec: GdVector3, infiniteInertia: Bool = true, excludeRaycastShapes: Bool = true, testOnly: Bool = false): KinematicCollision;
    public function moveAndSlide(linearVelocity: GdVector3, upDirection: GdVector3, stopOnSlope: Bool = false, maxSlides: Int = 4, floorMaxAngle: Float = 0.785398, infiniteInertia: Bool = true): Vector3;
    public function moveAndSlideWithSnap(linearVelocity: GdVector3, snap: GdVector3, upDirection: GdVector3, stopOnSlope: Bool = false, maxSlides: Int = 4, floorMaxAngle: Float = 0.785398, infiniteInertia: Bool = true): Vector3;
    public function setAxisLock(axis: Int, lock: Bool): Void;
    public function testMove(from: Transform, relVec: GdVector3, infiniteInertia: Bool = true): Bool;
    @:native("__new")
    public function new();
}
