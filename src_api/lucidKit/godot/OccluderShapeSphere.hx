package lucidkit.godot;

@:native("godot.OccluderShapeSphere")
extern class OccluderShapeSphere extends OccluderShape {
    public var spheres: Array<Dynamic>;
    public function set_sphere_position(index: Int, position: GdVector3): Void;
    public function set_sphere_radius(index: Int, radius: Float): Void;
}
