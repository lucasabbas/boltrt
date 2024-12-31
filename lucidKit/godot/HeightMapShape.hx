package lucidKit.godot;

class HeightMapShapeSignalNames {
}
@:native("godot.HeightMapShape")
extern class HeightMapShape extends Shape {
    public var mapData: PoolRealArray;
    public var mapDepth: Int;
    public var mapWidth: Int;
    @:native("__new")
    public function new();
}
