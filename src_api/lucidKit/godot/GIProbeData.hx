package lucidkit.godot;

@:native("godot.GIProbeData")
extern class GIProbeData extends Resource {
    public var bias: Float;
    public var bounds: AABB;
    public var cell_size: Float;
    public var compress: Bool;
    public var dynamic_data: PoolIntArray;
    public var dynamic_range: Int;
    public var energy: Float;
    public var interior: Bool;
    public var normal_bias: Float;
    public var propagation: Float;
    public var to_cell_xform: Transform;
}
