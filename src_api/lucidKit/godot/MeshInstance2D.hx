package lucidKit.godot;

@:native("godot.MeshInstance2D")
extern class MeshInstance2D extends Node2D {
    public var mesh: Mesh;
    public var normal_map: Texture;
    public var texture: Texture;
    @:native("__new")
    public function new();
}
