package bolt.godot;

class AudioEffectHighShelfFilterDb {
    public static var Filter6db: Int = 0;
    public static var Filter12db: Int = 1;
    public static var Filter18db: Int = 2;
    public static var Filter24db: Int = 3;
}
class AudioEffectHighShelfFilterSignalNames {
}
@:native("godot.AudioEffectHighShelfFilter")
extern class AudioEffectHighShelfFilter extends AudioEffectFilter {
    @:native("__new")
    public function new();
}
