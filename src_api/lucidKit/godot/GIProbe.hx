package lucidKit.godot;

@:native("godot.GIProbe")
extern class GIProbe extends VisualInstance {
    public var bias: Float;
    public var compress: Bool;
    public var data: GIProbeData;
    public var dynamic_range: Int;
    public var energy: Float;
    public var extents: Vector3;
    public var interior: Bool;
    public var normal_bias: Float;
    public var propagation: Float;
    public var subdiv: Int;
    public function bake(from_node: Node, create_visual_debug: Bool): Void;
    public function debug_bake(): Void;
    @:native("__new")
    public function new();
}
