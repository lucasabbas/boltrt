package lucidKit.godot;

class VisualInstancePortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class VisualInstanceMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class VisualInstancePauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class VisualInstancePhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class VisualInstanceSignalNames {
}
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
