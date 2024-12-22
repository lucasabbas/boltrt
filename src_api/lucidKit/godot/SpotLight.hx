package lucidKit.godot;

@:native("godot.SpotLight")
extern class SpotLight extends Light {
    public var spotAngle: Float;
    public var spotAngleAttenuation: Float;
    public var spotAttenuation: Float;
    public var spotRange: Float;
    @:native("__new")
    public function new();
}
