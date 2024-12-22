package lucidkit.godot;

@:native("godot.AnimatedTexture")
extern class AnimatedTexture extends Texture {
    public var current_frame: Int;
    public var flags: Int;
    public var fps: Float;
    public var frames: Int;
    public var oneshot: Bool;
    public var pause: Bool;
    public function get_frame_delay(frame: Int): Float;
    public function get_frame_texture(frame: Int): Texture;
    public function set_frame_delay(frame: Int, delay: Float): Void;
    public function set_frame_texture(frame: Int, texture: Texture): Void;
}
