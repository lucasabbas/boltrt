package lucidKit.godot;

@:native("godot.ARVRAnchor")
extern class ARVRAnchor extends Spatial {
    public var anchor_id: Int;
    public function get_anchor_name(): String;
    public function get_is_active(): Bool;
    public function get_mesh(): Mesh;
    public function get_plane(): Plane;
    public function get_size(): Vector3;
    @:native("__new")
    public function new();
}
