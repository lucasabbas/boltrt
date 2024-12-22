package lucidkit.godot;

@:native("godot.SkeletonIK")
extern class SkeletonIK extends Node {
    public var interpolation: Float;
    public var magnet: Vector3;
    public var max_iterations: Int;
    public var min_distance: Float;
    public var override_tip_basis: Bool;
    public var root_bone: String;
    public var target: Transform;
    public var target_node: NodePath;
    public var tip_bone: String;
    public var use_magnet: Bool;
    public function get_parent_skeleton(): Skeleton;
    public function is_running(): Bool;
    public function start(one_time: Bool): Void;
    public function stop(): Void;
}
