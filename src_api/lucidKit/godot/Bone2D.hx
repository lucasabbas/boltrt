package lucidKit.godot;

@:native("godot.Bone2D")
extern class Bone2D extends Node2D {
    public var default_length: Float;
    public var rest: Transform2D;
    public function apply_rest(): Void;
    public function get_index_in_skeleton(): Int;
    public function get_skeleton_rest(): Transform2D;
    @:native("__new")
    public function new();
}
