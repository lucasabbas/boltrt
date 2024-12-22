package lucidKit.godot;

@:native("godot.Portal")
extern class Portal extends Spatial {
    public var include_in_bound: Bool;
    public var linked_room: NodePath;
    public var points: PoolVector2Array;
    public var portal_active: Bool;
    public var portal_margin: Float;
    public var two_way: Bool;
    public var use_default_margin: Bool;
    public function set_point(index: Int, position: GdVector2): Void;
    @:native("__new")
    public function new();
}
