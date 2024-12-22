package lucidkit.godot;

@:native("godot.RandomNumberGenerator")
extern class RandomNumberGenerator extends Reference {
    public var seed: Int;
    public var state: Int;
    public function randf(): Float;
    public function randf_range(from: Float, to: Float): Float;
    public function randfn(mean: Float, deviation: Float): Float;
    public function randi(): Int;
    public function randi_range(from: Int, to: Int): Int;
    public function randomize(): Void;
}
