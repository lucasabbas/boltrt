package lucidKit.godot;

@:native("godot.HeightMapShape")
extern class HeightMapShape extends Shape {
    public var map_data: PoolRealArray;
    public var map_depth: Int;
    public var map_width: Int;
    @:native("__new")
    public function new();
}
