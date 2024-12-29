package lucidKit.godot;

@:native("godot.OmniLight")
extern class OmniLight extends Light {
    public var omniAttenuation: Float;
    public var omniRange: Float;
    public var omniShadowDetail: Int;
    public var omniShadowMode: Int;
    @:native("__new")
    public function new();
}
