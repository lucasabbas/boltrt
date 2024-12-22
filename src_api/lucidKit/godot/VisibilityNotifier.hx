package lucidKit.godot;

@:native("godot.VisibilityNotifier")
extern class VisibilityNotifier extends CullInstance {
    public var aabb: AABB;
    public var maxDistance: Float;
    public function isOnScreen(): Bool;
    @:native("__new")
    public function new();
}
