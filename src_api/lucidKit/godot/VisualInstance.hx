package lucidKit.godot;

@:native("godot.VisualInstance")
extern class VisualInstance extends CullInstance {
    public var layers: Int;
    public var sortingOffset: Float;
    public var sortingUseAabbCenter: Bool;
    public function getAabb(): AABB;
    public function getBase(): RID;
    public function getInstance(): RID;
    public function getLayerMaskBit(layer: Int): Bool;
    public function getTransformedAabb(): AABB;
    public function setBase(base: RID): Void;
    public function setLayerMaskBit(layer: Int, enabled: Bool): Void;
    @:native("__new")
    public function new();
}
