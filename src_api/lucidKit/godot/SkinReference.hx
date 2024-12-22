package lucidkit.godot;

@:native("godot.SkinReference")
extern class SkinReference extends Reference {
    public function get_skeleton(): RID;
    public function get_skin(): Skin;
}
