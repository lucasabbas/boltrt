package magicrt.godot;

class AudioEffectFilterDb {
    public static var Filter6db: Int = 0;
    public static var Filter12db: Int = 1;
    public static var Filter18db: Int = 2;
    public static var Filter24db: Int = 3;
}
class AudioEffectFilterSignalNames {
}
@:native("godot.AudioEffectFilter")
extern class AudioEffectFilter extends AudioEffect {
    public var cutoffHz: Float;
    public var db: Int;
    public var gain: Float;
    public var resonance: Float;
    @:native("__new")
    public function new();
}
