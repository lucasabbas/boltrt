package bolt.godot;

class SpriteFramesSignalNames {
}
@:native("godot.SpriteFrames")
extern class SpriteFrames extends Resource {
    public var frames: Array<Dynamic>;
    public function addAnimation(anim: String): Void;
    public function addFrame(anim: String, frame: Texture, atPosition: Int = -1): Void;
    public function clear(anim: String): Void;
    public function clearAll(): Void;
    public function getAnimationLoop(anim: String): Bool;
    public function getAnimationNames(): PoolStringArray;
    public function getAnimationSpeed(anim: String): Float;
    public function getFrame(anim: String, idx: Int): Texture;
    public function getFrameCount(anim: String): Int;
    public function hasAnimation(anim: String): Bool;
    public function removeAnimation(anim: String): Void;
    public function removeFrame(anim: String, idx: Int): Void;
    public function renameAnimation(anim: String, newname: String): Void;
    public function setAnimationLoop(anim: String, loop: Bool): Void;
    public function setAnimationSpeed(anim: String, speed: Float): Void;
    public function setFrame(anim: String, idx: Int, txt: Texture): Void;
    @:native("__new")
    public function new();
}
