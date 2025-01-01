package bolt.godot;

class EditorSpatialGizmoPluginSignalNames {
}
@:native("godot.EditorSpatialGizmoPlugin")
extern class EditorSpatialGizmoPlugin extends Resource {
    public function addMaterial(name: String, material: Material3D): Void;
    public function canBeHidden(): Bool;
    public function commitHandle(gizmo: EditorSpatialGizmo, index: Int, restore: Variant, cancel: Bool = false): Void;
    public function createGizmo(spatial: Spatial): EditorSpatialGizmo;
    public function createHandleMaterial(name: String, billboard: Bool = false, texture: Texture): Void;
    public function createIconMaterial(name: String, texture: Texture, onTop: Bool = false, color: Color): Void;
    public function createMaterial(name: String, color: Color, billboard: Bool = false, onTop: Bool = false, useVertexColor: Bool = false): Void;
    public function getHandleName(gizmo: EditorSpatialGizmo, index: Int): String;
    public function getHandleValue(gizmo: EditorSpatialGizmo, index: Int): Variant;
    public function getMaterial(name: String, gizmo: EditorSpatialGizmo): Material3D;
    public function getName(): String;
    public function getPriority(): Int;
    public function hasGizmo(spatial: Spatial): Bool;
    public function isHandleHighlighted(gizmo: EditorSpatialGizmo, index: Int): Bool;
    public function isSelectableWhenHidden(): Bool;
    public function redraw(gizmo: EditorSpatialGizmo): Void;
    public function setHandle(gizmo: EditorSpatialGizmo, index: Int, camera: Camera, point: GdVector2): Void;
    @:native("__new")
    public function new();
}
