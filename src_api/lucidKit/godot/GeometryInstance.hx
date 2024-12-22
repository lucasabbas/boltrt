package lucidKit.godot;

@:native("godot.GeometryInstance")
extern class GeometryInstance extends VisualInstance {
    public var castShadow: Int;
    public var extraCullMargin: Float;
    public var generateLightmap: Bool;
    public var lightmapScale: Int;
    public var materialOverlay: Material;
    public var materialOverride: Material;
    public var useInBakedLight: Bool;
    public function getFlag(flag: Int): Bool;
    public function setCustomAabb(aabb: AABB): Void;
    public function setFlag(flag: Int, value: Bool): Void;
    @:native("__new")
    public function new();
}
