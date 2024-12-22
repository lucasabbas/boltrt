package lucidkit.godot;

@:native("godot.SpatialVelocityTracker")
extern class SpatialVelocityTracker extends Reference {
    public var track_physics_step: Bool;
    public function get_tracked_linear_velocity(): Vector3;
    public function reset(position: GdVector3): Void;
    public function update_position(position: GdVector3): Void;
}
