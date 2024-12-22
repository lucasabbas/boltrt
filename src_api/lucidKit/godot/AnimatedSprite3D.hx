package lucidkit.godot;

@:native("godot.AnimatedSprite3D")
extern class AnimatedSprite3D extends SpriteBase3D {
    public var animation: String;
    public var frame: Int;
    public var frames: SpriteFrames;
    public var playing: Bool;
    public function is_playing(): Bool;
    public function play(anim: String): Void;
    public function stop(): Void;
}
