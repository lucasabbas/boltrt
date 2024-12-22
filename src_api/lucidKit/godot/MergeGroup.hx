package lucidKit.godot;

@:native("godot.MergeGroup")
extern class MergeGroup extends Spatial {
    public var auto_merge: Bool;
    public var shadow_proxy: Bool;
    public function get_param(param: Int): Int;
    public function get_param_enabled(param: Int): Bool;
    public function merge_meshes(): Void;
    public function set_param(param: Int, value: Int): Void;
    public function set_param_enabled(param: Int, value: Bool): Void;
    @:native("__new")
    public function new();
}
