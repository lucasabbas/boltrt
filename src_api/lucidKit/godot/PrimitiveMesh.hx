package lucidKit.godot;

@:native("godot.PrimitiveMesh")
extern class PrimitiveMesh extends Mesh {
    public var custom_aabb: AABB;
    public var flip_faces: Bool;
    public var material: Material;
    public function get_mesh_arrays(): Array<Dynamic>;
    @:native("__new")
    public function new();
}
