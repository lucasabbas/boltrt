package lucidKit.godot;

class EditorSpatialGizmoSignalNames {
}
@:native("godot.EditorSpatialGizmo")
extern class EditorSpatialGizmo extends SpatialGizmo {
    public function addCollisionSegments(segments: PoolVector3Array): Void;
    public function addCollisionTriangles(triangles: TriangleMesh): Void;
    public function addHandles(handles: PoolVector3Array, material: Material, billboard: Bool = false, secondary: Bool = false): Void;
    public function addLines(lines: PoolVector3Array, material: Material, billboard: Bool = false, modulate: Color): Void;
    public function addMesh(mesh: Mesh, billboard: Bool = false, skeleton: SkinReference, material: Material): Void;
    public function addUnscaledBillboard(material: Material, defaultScale: Float = 1, modulate: Color): Void;
    public function clear(): Void;
    public function commitHandle(index: Int, restore: Variant, cancel: Bool = false): Void;
    public function getHandleName(index: Int): String;
    public function getHandleValue(index: Int): Variant;
    public function getPlugin(): EditorSpatialGizmoPlugin;
    public function getSpatialNode(): Spatial;
    public function isHandleHighlighted(index: Int): Bool;
    public function redraw(): Void;
    public function setHandle(index: Int, camera: Camera, point: GdVector2): Void;
    public function setHidden(hidden: Bool): Void;
    public function setSpatialNode(node: Node): Void;
    @:native("__new")
    public function new();
}
