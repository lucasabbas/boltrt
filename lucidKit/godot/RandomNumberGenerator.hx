package lucidKit.godot;

class RandomNumberGeneratorSignalNames {
}
@:native("godot.RandomNumberGenerator")
extern class RandomNumberGenerator extends Reference {
    public var seed: Int;
    public var state: Int;
    public function randf(): Float;
    public function randfRange(from: Float, to: Float): Float;
    public function randfn(mean: Float = 0.0, deviation: Float = 1.0): Float;
    public function randi(): Int;
    public function randiRange(from: Int, to: Int): Int;
    public function randomize(): Void;
    @:native("__new")
    public function new();
}
