package lucidKit.godot;

@:native("godot.ReflectionProbe")
extern class ReflectionProbe extends VisualInstance {
    public var boxProjection: Bool;
    public var cullMask: Int;
    public var enableShadows: Bool;
    public var extents: Vector3;
    public var intensity: Float;
    public var interiorAmbientColor: Color;
    public var interiorAmbientContrib: Float;
    public var interiorAmbientEnergy: Float;
    public var interiorEnable: Bool;
    public var maxDistance: Float;
    public var originOffset: Vector3;
    public var updateMode: Int;
    @:native("__new")
    public function new();
}
