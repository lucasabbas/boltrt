package lucidKit.godot;

@:native("godot.Portal")
extern class Portal extends Spatial {
    public var includeInBound: Bool;
    public var linkedRoom: NodePath;
    public var points: PoolVector2Array;
    public var portalActive: Bool;
    public var portalMargin: Float;
    public var twoWay: Bool;
    public var useDefaultMargin: Bool;
    public function setPoint(index: Int, position: GdVector2): Void;
    @:native("__new")
    public function new();
}
