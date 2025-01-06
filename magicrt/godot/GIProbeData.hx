package magicrt.godot;

class GIProbeDataSignalNames {
}
@:native("godot.GIProbeData")
extern class GIProbeData extends Resource {
    public var bias: Float;
    public var bounds: AABB;
    public var cellSize: Float;
    public var compress: Bool;
    public var dynamicData: PoolIntArray;
    public var dynamicRange: Int;
    public var energy: Float;
    public var interior: Bool;
    public var normalBias: Float;
    public var propagation: Float;
    public var toCellXform: Transform;
    @:native("__new")
    public function new();
}
