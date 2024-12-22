package lucidKit.godot;

@:native("godot.CanvasItemMaterial")
extern class CanvasItemMaterial extends Material {
    public var blendMode: Int;
    public var lightMode: Int;
    public var particlesAnimHFrames: Int;
    public var particlesAnimLoop: Bool;
    public var particlesAnimVFrames: Int;
    public var particlesAnimation: Bool;
    @:native("__new")
    public function new();
}
