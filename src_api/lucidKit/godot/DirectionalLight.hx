package lucidKit.godot;

@:native("godot.DirectionalLight")
extern class DirectionalLight extends Light {
    public var directionalShadowBiasSplitScale: Float;
    public var directionalShadowBlendSplits: Bool;
    public var directionalShadowDepthRange: Int;
    public var directionalShadowFadeStart: Float;
    public var directionalShadowMaxDistance: Float;
    public var directionalShadowMode: Int;
    public var directionalShadowNormalBias: Float;
    public var directionalShadowSplit1: Float;
    public var directionalShadowSplit2: Float;
    public var directionalShadowSplit3: Float;
    @:native("__new")
    public function new();
}
