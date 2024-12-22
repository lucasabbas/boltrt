package lucidkit.godot;

@:native("godot.AnimationTree")
extern class AnimationTree extends Node {
    public var active: Bool;
    public var anim_player: NodePath;
    public var process_mode: Int;
    public var root_motion_track: NodePath;
    public var tree_root: AnimationNode;
    public function advance(delta: Float): Void;
    public function get_root_motion_transform(): Transform;
    public function rename_parameter(old_name: String, new_name: String): Void;
}
