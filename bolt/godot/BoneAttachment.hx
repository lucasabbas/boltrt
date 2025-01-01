package bolt.godot;

class BoneAttachmentMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class BoneAttachmentPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class BoneAttachmentPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class BoneAttachmentSignalNames {
}
@:native("godot.BoneAttachment")
extern class BoneAttachment extends Spatial {
    public var boneName: String;
    @:native("__new")
    public function new();
}
