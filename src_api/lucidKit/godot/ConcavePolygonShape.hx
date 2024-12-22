package lucidKit.godot;

@:native("godot.ConcavePolygonShape")
extern class ConcavePolygonShape extends Shape {
    public function getFaces(): PoolVector3Array;
    public function setFaces(faces: PoolVector3Array): Void;
    @:native("__new")
    public function new();
}
