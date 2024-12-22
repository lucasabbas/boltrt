package lucidKit.godot;

@:native("godot.GIProbe")
extern class GIProbe extends VisualInstance {
    public var bias: Float;
    public var compress: Bool;
    public var data: GIProbeData;
    public var dynamicRange: Int;
    public var energy: Float;
    public var extents: Vector3;
    public var interior: Bool;
    public var normalBias: Float;
    public var propagation: Float;
    public var subdiv: Int;
    public function bake(fromNode: Node, createVisualDebug: Bool = false): Void;
    public function debugBake(): Void;
    @:native("__new")
    public function new();
}
