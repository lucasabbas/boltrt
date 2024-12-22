package lucidKit.godot;

@:native("godot.Spatial")
extern class Spatial extends Node {
    public var gizmo: SpatialGizmo;
    public var global_position: Vector3;
    public var global_rotation: Vector3;
    public var global_transform: Transform;
    public var global_translation: Vector3;
    public var lod_range: Float;
    public var merging_mode: Int;
    public var position: Vector3;
    public var rotation: Vector3;
    public var rotation_degrees: Vector3;
    public var scale: Vector3;
    public var transform: Transform;
    public var translation: Vector3;
    public var visible: Bool;
    public function force_update_transform(): Void;
    public function get_global_transform_interpolated(): Transform;
    public function get_parent_spatial(): Spatial;
    public function get_world(): World;
    public function global_rotate(axis: GdVector3, angle: Float): Void;
    public function global_scale(scale: GdVector3): Void;
    public function global_translate(offset: GdVector3): Void;
    public function hide(): Void;
    public function is_local_transform_notification_enabled(): Bool;
    public function is_scale_disabled(): Bool;
    public function is_set_as_toplevel(): Bool;
    public function is_transform_notification_enabled(): Bool;
    public function is_visible_in_tree(): Bool;
    public function look_at(target: GdVector3, up: GdVector3): Void;
    public function look_at_from_position(position: GdVector3, target: GdVector3, up: GdVector3): Void;
    public function orthonormalize(): Void;
    public function rotate(axis: GdVector3, angle: Float): Void;
    public function rotate_object_local(axis: GdVector3, angle: Float): Void;
    public function rotate_x(angle: Float): Void;
    public function rotate_y(angle: Float): Void;
    public function rotate_z(angle: Float): Void;
    public function scale_object_local(scale: GdVector3): Void;
    public function set_as_toplevel(enable: Bool): Void;
    public function set_disable_scale(disable: Bool): Void;
    public function set_identity(): Void;
    public function set_ignore_transform_notification(enabled: Bool): Void;
    public function set_notify_local_transform(enable: Bool): Void;
    public function set_notify_transform(enable: Bool): Void;
    public function show(): Void;
    public function to_global(local_point: GdVector3): Vector3;
    public function to_local(global_point: GdVector3): Vector3;
    public function translate(offset: GdVector3): Void;
    public function translate_object_local(offset: GdVector3): Void;
    public function update_gizmo(): Void;
    @:native("__new")
    public function new();
}
