package magicrt.godot;

class CanvasItemPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class CanvasItemPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class CanvasItemSignalNames {
    public static var draw: String = "draw";
    public static var hide: String = "hide";
    public static var itemRectChanged: String = "item_rect_changed";
    public static var visibilityChanged: String = "visibility_changed";
}
@:native("godot.CanvasItem")
extern class CanvasItem extends Node {
    public var lightMask: Int;
    public var material: Material;
    public var modulate: Color;
    public var selfModulate: Color;
    public var showBehindParent: Bool;
    public var showOnTop: Bool;
    public var useParentMaterial: Bool;
    public var visible: Bool;
    public function Draw(): Void;
    public function drawArc(center: GdVector2, radius: Float, startAngle: Float, endAngle: Float, pointCount: Int, color: Color, width: Float = 1.0, antialiased: Bool = false): Void;
    public function drawChar(font: Font, position: GdVector2, char: String, next: String, modulate: Color): Float;
    public function drawCircle(position: GdVector2, radius: Float, color: Color): Void;
    public function drawColoredPolygon(points: PoolVector2Array, color: Color, uvs: PoolVector2Array, texture: Texture, normalMap: Texture, antialiased: Bool = false): Void;
    public function drawLine(from: GdVector2, to: GdVector2, color: Color, width: Float = 1.0, antialiased: Bool = false): Void;
    public function drawMesh(mesh: Mesh, texture: Texture, normalMap: Texture, transform: Transform2D, modulate: Color): Void;
    public function drawMultiline(points: PoolVector2Array, color: Color, width: Float = 1.0, antialiased: Bool = false): Void;
    public function drawMultilineColors(points: PoolVector2Array, colors: PoolColorArray, width: Float = 1.0, antialiased: Bool = false): Void;
    public function drawMultimesh(multimesh: MultiMesh, texture: Texture, normalMap: Texture): Void;
    public function drawPolygon(points: PoolVector2Array, colors: PoolColorArray, uvs: PoolVector2Array, texture: Texture, normalMap: Texture, antialiased: Bool = false): Void;
    public function drawPolyline(points: PoolVector2Array, color: Color, width: Float = 1.0, antialiased: Bool = false): Void;
    public function drawPolylineColors(points: PoolVector2Array, colors: PoolColorArray, width: Float = 1.0, antialiased: Bool = false): Void;
    public function drawPrimitive(points: PoolVector2Array, colors: PoolColorArray, uvs: PoolVector2Array, texture: Texture, width: Float = 1.0, normalMap: Texture): Void;
    public function drawRect(rect: Rect2, color: Color, filled: Bool = true, width: Float = 1.0, antialiased: Bool = false): Void;
    public function drawSetTransform(position: GdVector2, rotation: Float, scale: GdVector2): Void;
    public function drawSetTransformMatrix(xform: Transform2D): Void;
    public function drawString(font: Font, position: GdVector2, text: String, modulate: Color, clipW: Int = -1): Void;
    public function drawStyleBox(styleBox: StyleBox, rect: Rect2): Void;
    public function drawTexture(texture: Texture, position: GdVector2, modulate: Color, normalMap: Texture): Void;
    public function drawTextureRect(texture: Texture, rect: Rect2, tile: Bool, modulate: Color, transpose: Bool = false, normalMap: Texture): Void;
    public function drawTextureRectRegion(texture: Texture, rect: Rect2, srcRect: Rect2, modulate: Color, transpose: Bool = false, normalMap: Texture, clipUv: Bool = true): Void;
    public function forceUpdateTransform(): Void;
    public function getCanvas(): RID;
    public function getCanvasItem(): RID;
    public function getCanvasTransform(): Transform2D;
    public function getGlobalMousePosition(): Vector2;
    public function getGlobalTransform(): Transform2D;
    public function getGlobalTransformWithCanvas(): Transform2D;
    public function getLocalMousePosition(): Vector2;
    public function getTransform(): Transform2D;
    public function getViewportRect(): Rect2;
    public function getViewportTransform(): Transform2D;
    public function getWorld2d(): World2D;
    public function hide(): Void;
    public function isLocalTransformNotificationEnabled(): Bool;
    public function isSetAsToplevel(): Bool;
    public function isTransformNotificationEnabled(): Bool;
    public function isVisibleInTree(): Bool;
    public function makeCanvasPositionLocal(screenPoint: GdVector2): Vector2;
    public function makeInputLocal(event: InputEvent): InputEvent;
    public function setAsToplevel(enable: Bool): Void;
    public function setNotifyLocalTransform(enable: Bool): Void;
    public function setNotifyTransform(enable: Bool): Void;
    public function show(): Void;
    public function update(): Void;
    @:native("__new")
    public function new();
}
