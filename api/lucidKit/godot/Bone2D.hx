package lucidKit.godot;

@:native("godot.Bone2D")
extern class Bone2D extends Node2D {
    public var defaultLength: Float;
    public var rest: Transform2D;
    public function applyRest(): Void;
    public function getIndexInSkeleton(): Int;
    public function getSkeletonRest(): Transform2D;
    @:native("__new")
    public function new();
}
