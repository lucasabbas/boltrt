package magicrt.godot;

class AudioEffectNotchFilterDb {
    public static var Filter6db: Int = 0;
    public static var Filter12db: Int = 1;
    public static var Filter18db: Int = 2;
    public static var Filter24db: Int = 3;
}
class AudioEffectNotchFilterSignalNames {
}
@:native("godot.AudioEffectNotchFilter")
extern class AudioEffectNotchFilter extends AudioEffectFilter {
    @:native("__new")
    public function new();
}
