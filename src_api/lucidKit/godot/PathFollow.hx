package lucidKit.godot;

@:native("godot.PathFollow")
extern class PathFollow extends Spatial {
    public var cubicInterp: Bool;
    public var hOffset: Float;
    public var loop: Bool;
    public var offset: Float;
    public var rotationMode: Int;
    public var unitOffset: Float;
    public var vOffset: Float;
    @:native("__new")
    public function new();
}
