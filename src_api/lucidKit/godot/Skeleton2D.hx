package lucidKit.godot;

@:native("godot.Skeleton2D")
extern class Skeleton2D extends Node2D {
    public function getBone(idx: Int): Bone2D;
    public function getBoneCount(): Int;
    public function getSkeleton(): RID;
    @:native("__new")
    public function new();
}
