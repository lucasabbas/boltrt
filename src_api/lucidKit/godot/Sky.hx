package lucidKit.godot;

@:native("godot.Sky")
extern class Sky extends Resource {
    public var radianceSize: Int;
    @:native("__new")
    public function new();
}
