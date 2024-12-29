package lucidKit.godot;

@:native("godot.PanoramaSky")
extern class PanoramaSky extends Sky {
    public var panorama: Texture;
    @:native("__new")
    public function new();
}
