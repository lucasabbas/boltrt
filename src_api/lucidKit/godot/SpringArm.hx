package lucidkit.godot;

@:native("godot.SpringArm")
extern class SpringArm extends Spatial {
    public var collision_mask: Int;
    public var margin: Float;
    public var shape: Shape;
    public var spring_length: Float;
    public function add_excluded_object(RID: RID): Void;
    public function clear_excluded_objects(): Void;
    public function get_hit_length(): Float;
    public function remove_excluded_object(RID: RID): Bool;
}
