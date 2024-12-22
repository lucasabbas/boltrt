package lucidkit.godot;

@:native("godot.MultiMesh")
extern class MultiMesh extends Resource {
    public var color_format: Int;
    public var custom_data_format: Int;
    public var instance_count: Int;
    public var mesh: Mesh;
    public var physics_interpolation_quality: Int;
    public var transform_format: Int;
    public var visible_instance_count: Int;
    public function get_aabb(): AABB;
    public function get_instance_color(instance: Int): Color;
    public function get_instance_custom_data(instance: Int): Color;
    public function get_instance_transform(instance: Int): Transform;
    public function get_instance_transform_2d(instance: Int): Transform2D;
    public function reset_instance_physics_interpolation(instance: Int): Void;
    public function set_as_bulk_array(array: PoolRealArray): Void;
    public function set_as_bulk_array_interpolated(array_current: PoolRealArray, array_previous: PoolRealArray): Void;
    public function set_instance_color(instance: Int, color: Color): Void;
    public function set_instance_custom_data(instance: Int, custom_data: Color): Void;
    public function set_instance_transform(instance: Int, transform: Transform): Void;
    public function set_instance_transform_2d(instance: Int, transform: Transform2D): Void;
}
