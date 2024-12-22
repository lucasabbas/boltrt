package lucidkit.godot;

@:native("godot.VisibilityNotifier")
extern class VisibilityNotifier extends CullInstance {
    public var aabb: AABB;
    public var max_distance: Float;
    public function is_on_screen(): Bool;
}
