package lucidKit.godot;

@:native("godot.Particles")
extern class Particles extends GeometryInstance {
    public var amount: Int;
    public var drawOrder: Int;
    public var drawPass1: Mesh;
    public var drawPass2: Mesh;
    public var drawPass3: Mesh;
    public var drawPass4: Mesh;
    public var drawPasses: Int;
    public var emitting: Bool;
    public var explosiveness: Float;
    public var fixedFps: Int;
    public var fractDelta: Bool;
    public var lifetime: Float;
    public var localCoords: Bool;
    public var oneShot: Bool;
    public var preprocess: Float;
    public var processMaterial: Material;
    public var randomness: Float;
    public var speedScale: Float;
    public var visibilityAabb: AABB;
    public function captureAabb(): AABB;
    public function getDrawPassMesh(pass: Int): Mesh;
    public function restart(): Void;
    public function setDrawPassMesh(pass: Int, mesh: Mesh): Void;
    @:native("__new")
    public function new();
}
