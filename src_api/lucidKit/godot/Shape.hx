package lucidkit.godot;

@:native("godot.Shape")
extern class Shape extends Resource {
    public var margin: Float;
    public function get_debug_mesh(): ArrayMesh;
}
