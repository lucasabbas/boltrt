package lucidKit.godot;

@:native("godot.CubeMap")
extern class CubeMap extends Resource {
    public var flags: Int;
    public var lossyStorageQuality: Float;
    public var storageMode: Int;
    public function getHeight(): Int;
    public function getSide(side: Int): Image;
    public function getWidth(): Int;
    public function setSide(side: Int, image: Image): Void;
    @:native("__new")
    public function new();
}
