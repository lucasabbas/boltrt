package lucidKit.godot;

class OccluderPolygon2DCullMode {
    public static var Disabled: Int = 0;
    public static var Clockwise: Int = 1;
    public static var CounterClockwise: Int = 2;
}
class OccluderPolygon2DSignalNames {
}
@:native("godot.OccluderPolygon2D")
extern class OccluderPolygon2D extends Resource {
    public var closed: Bool;
    public var cullMode: Int;
    public var polygon: PoolVector2Array;
    @:native("__new")
    public function new();
}
