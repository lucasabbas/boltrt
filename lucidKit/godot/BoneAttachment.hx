package lucidKit.godot;

@:native("godot.BoneAttachment")
extern class BoneAttachment extends Spatial {
    public var boneName: String;
    @:native("__new")
    public function new();
}
