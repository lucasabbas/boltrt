package lucidKit.godot;

@:native("godot.Particles2D")
extern class Particles2D extends Node2D {
    public var amount: Int;
    public var drawOrder: Int;
    public var emitting: Bool;
    public var explosiveness: Float;
    public var fixedFps: Int;
    public var fractDelta: Bool;
    public var lifetime: Float;
    public var localCoords: Bool;
    public var normalMap: Texture;
    public var oneShot: Bool;
    public var preprocess: Float;
    public var processMaterial: Material;
    public var randomness: Float;
    public var speedScale: Float;
    public var texture: Texture;
    public var visibilityRect: Rect2;
    public function captureRect(): Rect2;
    public function restart(): Void;
    @:native("__new")
    public function new();
}
