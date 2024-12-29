package lucidKit.godot;

@:native("godot.ARVRPositionalTracker")
extern class ARVRPositionalTracker extends Reference {
    public var rumble: Float;
    public function getHand(): Int;
    public function getJoyId(): Int;
    public function getMesh(): Mesh;
    public function getName(): String;
    public function getOrientation(): Basis;
    public function getPosition(): Vector3;
    public function getTrackerId(): Int;
    public function getTracksOrientation(): Bool;
    public function getTracksPosition(): Bool;
    public function getTransform(adjustByReferenceFrame: Bool): Transform;
    public function getType(): Int;
    @:native("__new")
    public function new();
}
