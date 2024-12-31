package lucidKit.godot;

class BakedLightmapDataSignalNames {
}
@:native("godot.BakedLightmapData")
extern class BakedLightmapData extends Resource {
    public var bounds: AABB;
    public var cellSpaceTransform: Transform;
    public var cellSubdiv: Int;
    public var energy: Float;
    public var interior: Bool;
    public var octree: PoolByteArray;
    public function addUser(path: NodePath, lightmap: Resource, lightmapSlice: Int, lightmapUvRect: Rect2, instance: Int): Void;
    public function clearData(): Void;
    public function clearUsers(): Void;
    public function getUserCount(): Int;
    public function getUserLightmap(userIdx: Int): Resource;
    public function getUserPath(userIdx: Int): NodePath;
    @:native("__new")
    public function new();
}
