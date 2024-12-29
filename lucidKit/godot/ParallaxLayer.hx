package lucidKit.godot;

@:native("godot.ParallaxLayer")
extern class ParallaxLayer extends Node2D {
    public var motionMirroring: Vector2;
    public var motionOffset: Vector2;
    public var motionScale: Vector2;
    @:native("__new")
    public function new();
}
