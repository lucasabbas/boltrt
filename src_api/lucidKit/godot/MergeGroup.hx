package lucidKit.godot;

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
