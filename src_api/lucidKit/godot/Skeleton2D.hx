package lucidkit.godot;

@:native("godot.Skeleton2D")
extern class Skeleton2D extends Node2D {
    public function get_bone(idx: Int): Bone2D;
    public function get_bone_count(): Int;
    public function get_skeleton(): RID;
}
