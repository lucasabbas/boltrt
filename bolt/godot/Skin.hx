package bolt.godot;

class SkinSignalNames {
}
@:native("godot.Skin")
extern class Skin extends Resource {
    public function addBind(bone: Int, pose: Transform): Void;
    public function clearBinds(): Void;
    public function getBindBone(bindIndex: Int): Int;
    public function getBindCount(): Int;
    public function getBindName(bindIndex: Int): String;
    public function getBindPose(bindIndex: Int): Transform;
    public function setBindBone(bindIndex: Int, bone: Int): Void;
    public function setBindCount(bindCount: Int): Void;
    public function setBindName(bindIndex: Int, name: String): Void;
    public function setBindPose(bindIndex: Int, pose: Transform): Void;
    @:native("__new")
    public function new();
}
