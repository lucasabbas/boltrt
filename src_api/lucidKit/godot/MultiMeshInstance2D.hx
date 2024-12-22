package lucidKit.godot;

@:native("godot.MultiMeshInstance2D")
extern class MultiMeshInstance2D extends Node2D {
    public var multimesh: MultiMesh;
    public var normal_map: Texture;
    public var texture: Texture;
    @:native("__new")
    public function new();
}
