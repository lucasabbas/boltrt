package lucidKit.godot;

@:native("godot.VehicleWheel")
extern class VehicleWheel extends Spatial {
    public var brake: Float;
    public var dampingCompression: Float;
    public var dampingRelaxation: Float;
    public var engineForce: Float;
    public var steering: Float;
    public var suspensionMaxForce: Float;
    public var suspensionStiffness: Float;
    public var suspensionTravel: Float;
    public var useAsSteering: Bool;
    public var useAsTraction: Bool;
    public var wheelFrictionSlip: Float;
    public var wheelRadius: Float;
    public var wheelRestLength: Float;
    public var wheelRollInfluence: Float;
    public function getContactBody(): Spatial;
    public function getRpm(): Float;
    public function getSkidinfo(): Float;
    public function isInContact(): Bool;
    @:native("__new")
    public function new();
}
