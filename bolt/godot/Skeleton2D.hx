package bolt.godot;

class Skeleton2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class Skeleton2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Skeleton2DSignalNames {
    public static var boneSetupChanged: String = "bone_setup_changed";
}
@:native("godot.Skeleton2D")
extern class Skeleton2D extends Node2D {
    public function getBone(idx: Int): Bone2D;
    public function getBoneCount(): Int;
    public function getSkeleton(): RID;
    @:native("__new")
    public function new();
}
