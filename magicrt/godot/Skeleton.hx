package magicrt.godot;

class SkeletonMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class SkeletonPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class SkeletonPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class SkeletonSignalNames {
    public static var skeletonUpdated: String = "skeleton_updated";
}
@:native("godot.Skeleton")
extern class Skeleton extends Spatial {
    public function addBone(name: String): Void;
    public function bindChildNodeToBone(boneIdx: Int, node: Node): Void;
    public function clearBones(): Void;
    public function clearBonesGlobalPoseOverride(): Void;
    public function findBone(name: String): Int;
    public function getBoneCount(): Int;
    public function getBoneCustomPose(boneIdx: Int): Transform;
    public function getBoneGlobalPose(boneIdx: Int): Transform;
    public function getBoneGlobalPoseNoOverride(boneIdx: Int): Transform;
    public function getBoneName(boneIdx: Int): String;
    public function getBoneParent(boneIdx: Int): Int;
    public function getBonePose(boneIdx: Int): Transform;
    public function getBoneRest(boneIdx: Int): Transform;
    public function getBoundChildNodesToBone(boneIdx: Int): Array<Dynamic>;
    public function isBoneRestDisabled(boneIdx: Int): Bool;
    public function localizeRests(): Void;
    public function physicalBonesAddCollisionException(exception: RID): Void;
    public function physicalBonesRemoveCollisionException(exception: RID): Void;
    public function physicalBonesStartSimulation(bones: Array<Dynamic>): Void;
    public function physicalBonesStopSimulation(): Void;
    public function registerSkin(skin: Skin): SkinReference;
    public function setBoneCustomPose(boneIdx: Int, customPose: Transform): Void;
    public function setBoneDisableRest(boneIdx: Int, disable: Bool): Void;
    public function setBoneGlobalPoseOverride(boneIdx: Int, pose: Transform, amount: Float, persistent: Bool = false): Void;
    public function setBoneName(boneIdx: Int, name: String): Void;
    public function setBoneParent(boneIdx: Int, parentIdx: Int): Void;
    public function setBonePose(boneIdx: Int, pose: Transform): Void;
    public function setBoneRest(boneIdx: Int, rest: Transform): Void;
    public function unbindChildNodeFromBone(boneIdx: Int, node: Node): Void;
    public function unparentBoneAndRest(boneIdx: Int): Void;
    @:native("__new")
    public function new();
}
