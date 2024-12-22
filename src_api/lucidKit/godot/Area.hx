package lucidkit.godot;

@:native("godot.Area")
extern class Area extends CollisionObject {
    public var angular_damp: Float;
    public var audio_bus_name: String;
    public var audio_bus_override: Bool;
    public var gravity: Float;
    public var gravity_distance_scale: Float;
    public var gravity_point: Bool;
    public var gravity_vec: Vector3;
    public var linear_damp: Float;
    public var monitorable: Bool;
    public var monitoring: Bool;
    public var priority: Float;
    public var reverb_bus_amount: Float;
    public var reverb_bus_enable: Bool;
    public var reverb_bus_name: String;
    public var reverb_bus_uniformity: Float;
    public var space_override: Int;
    public function get_overlapping_areas(): Array<Dynamic>;
    public function get_overlapping_bodies(): Array<Dynamic>;
    public function overlaps_area(area: Node): Bool;
    public function overlaps_body(body: Node): Bool;
}
