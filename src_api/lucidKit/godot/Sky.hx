package lucidKit.godot;

@:native("godot.Sky")
extern class Sky extends Resource {
    public var radiance_size: Int;
    @:native("__new")
    public function new();
}
