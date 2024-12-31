package lucidKit.godot;

class MergeGroupMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class MergeGroupPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class MergeGroupPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class MergeGroupSignalNames {
}
@:native("godot.MergeGroup")
extern class MergeGroup extends Spatial {
    public var autoMerge: Bool;
    public var shadowProxy: Bool;
    public function getParam(param: Int): Int;
    public function getParamEnabled(param: Int): Bool;
    public function mergeMeshes(): Void;
    public function setParam(param: Int, value: Int): Void;
    public function setParamEnabled(param: Int, value: Bool): Void;
    @:native("__new")
    public function new();
}
