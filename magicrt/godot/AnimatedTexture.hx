package magicrt.godot;

class AnimatedTextureSignalNames {
}
@:native("godot.AnimatedTexture")
extern class AnimatedTexture extends Texture {
    public var currentFrame: Int;
    public var fps: Float;
    public var frames: Int;
    public var oneshot: Bool;
    public var pause: Bool;
    public function getFrameDelay(frame: Int): Float;
    public function getFrameTexture(frame: Int): Texture;
    public function setFrameDelay(frame: Int, delay: Float): Void;
    public function setFrameTexture(frame: Int, texture: Texture): Void;
    @:native("__new")
    public function new();
}
