package magicrt.godot;

class Node2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class Node2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Node2DSignalNames {
}
@:native("godot.Node2D")
extern class Node2D extends CanvasItem {
    public var globalPosition: Vector2;
    public var globalRotation: Float;
    public var globalRotationDegrees: Float;
    public var globalScale: Vector2;
    public var globalTransform: Transform2D;
    public var position: Vector2;
    public var rotation: Float;
    public var rotationDegrees: Float;
    public var scale: Vector2;
    public var transform: Transform2D;
    public var zAsRelative: Bool;
    public var zIndex: Int;
    public function applyScale(ratio: GdVector2): Void;
    public function getAngleTo(point: GdVector2): Float;
    public function getRelativeTransformToParent(parent: Node): Transform2D;
    public function globalTranslate(offset: GdVector2): Void;
    public function lookAt(point: GdVector2): Void;
    public function moveLocalX(delta: Float, scaled: Bool = false): Void;
    public function moveLocalY(delta: Float, scaled: Bool = false): Void;
    public function rotate(radians: Float): Void;
    public function toGlobal(localPoint: GdVector2): Vector2;
    public function toLocal(globalPoint: GdVector2): Vector2;
    public function translate(offset: GdVector2): Void;
    @:native("__new")
    public function new();
}
