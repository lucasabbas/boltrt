package lucidKit.godot;

@:native("godot.KinematicBody2D")
extern class KinematicBody2D extends PhysicsBody2D {
    public var collisionSafeMargin: Float;
    public var motionSyncToPhysics: Bool;
    public var movingPlatformApplyVelocityOnLeave: Int;
    public function getFloorAngle(upDirection: GdVector2): Float;
    public function getFloorNormal(): Vector2;
    public function getFloorVelocity(): Vector2;
    public function getLastSlideCollision(): KinematicCollision2D;
    public function getSlideCollision(slideIdx: Int): KinematicCollision2D;
    public function getSlideCount(): Int;
    public function isOnCeiling(): Bool;
    public function isOnFloor(): Bool;
    public function isOnWall(): Bool;
    public function moveAndCollide(relVec: GdVector2, infiniteInertia: Bool = true, excludeRaycastShapes: Bool = true, testOnly: Bool = false): KinematicCollision2D;
    public function moveAndSlide(linearVelocity: GdVector2, upDirection: GdVector2, stopOnSlope: Bool = false, maxSlides: Int = 4, floorMaxAngle: Float = 0.785398, infiniteInertia: Bool = true): Vector2;
    public function moveAndSlideWithSnap(linearVelocity: GdVector2, snap: GdVector2, upDirection: GdVector2, stopOnSlope: Bool = false, maxSlides: Int = 4, floorMaxAngle: Float = 0.785398, infiniteInertia: Bool = true): Vector2;
    public function testMove(from: Transform2D, relVec: GdVector2, infiniteInertia: Bool = true): Bool;
    @:native("__new")
    public function new();
}
