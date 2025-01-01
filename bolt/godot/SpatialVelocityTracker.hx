package bolt.godot;

class SpatialVelocityTrackerSignalNames {
}
@:native("godot.SpatialVelocityTracker")
extern class SpatialVelocityTracker extends Reference {
    public var trackPhysicsStep: Bool;
    public function getTrackedLinearVelocity(): Vector3;
    public function reset(position: GdVector3): Void;
    public function updatePosition(position: GdVector3): Void;
    @:native("__new")
    public function new();
}
