package lucidKit.godot;

@:native("godot.PhysicalBone")
extern class PhysicalBone extends PhysicsBody {
    public var bodyOffset: Transform;
    public var bounce: Float;
    public var friction: Float;
    public var gravityScale: Float;
    public var jointOffset: Transform;
    public var jointType: Int;
    public var mass: Float;
    public var weight: Float;
    public function applyCentralImpulse(impulse: GdVector3): Void;
    public function applyImpulse(position: GdVector3, impulse: GdVector3): Void;
    public function getBoneId(): Int;
    public function getSimulatePhysics(): Bool;
    public function isSimulatingPhysics(): Bool;
    public function isStaticBody(): Bool;
    @:native("__new")
    public function new();
}
