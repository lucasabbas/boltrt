package lucidKit.godot;

@:native("godot.BoneAttachment")
extern class BoneAttachment extends Spatial {
    public var bone_name: String;
    @:native("__new")
    public function new();
}
