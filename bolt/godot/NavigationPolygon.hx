package bolt.godot;

class NavigationPolygonSignalNames {
}
@:native("godot.NavigationPolygon")
extern class NavigationPolygon extends Resource {
    public function addOutline(outline: PoolVector2Array): Void;
    public function addOutlineAtIndex(outline: PoolVector2Array, index: Int): Void;
    public function addPolygon(polygon: PoolIntArray): Void;
    public function clearOutlines(): Void;
    public function clearPolygons(): Void;
    public function getMesh(): NavigationMesh;
    public function getOutline(idx: Int): PoolVector2Array;
    public function getOutlineCount(): Int;
    public function getPolygon(idx: Int): PoolIntArray;
    public function getPolygonCount(): Int;
    public function getVertices(): PoolVector2Array;
    public function makePolygonsFromOutlines(): Void;
    public function removeOutline(idx: Int): Void;
    public function setOutline(idx: Int, outline: PoolVector2Array): Void;
    public function setVertices(vertices: PoolVector2Array): Void;
    @:native("__new")
    public function new();
}
