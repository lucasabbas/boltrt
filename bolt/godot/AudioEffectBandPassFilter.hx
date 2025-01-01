package bolt.godot;

class AudioEffectBandPassFilterDb {
    public static var Filter6db: Int = 0;
    public static var Filter12db: Int = 1;
    public static var Filter18db: Int = 2;
    public static var Filter24db: Int = 3;
}
class AudioEffectBandPassFilterSignalNames {
}
@:native("godot.AudioEffectBandPassFilter")
extern class AudioEffectBandPassFilter extends AudioEffectFilter {
    @:native("__new")
    public function new();
}
