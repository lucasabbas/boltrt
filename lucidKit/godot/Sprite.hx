package lucidKit.godot;

class SpritePauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class SpritePhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class SpriteSignalNames {
    public static var frameChanged: String = "frame_changed";
    public static var textureChanged: String = "texture_changed";
}
@:native("godot.Sprite")
extern class Sprite extends Node2D {
    public var centered: Bool;
    public var flipH: Bool;
    public var flipV: Bool;
    public var frame: Int;
    public var frameCoords: Vector2;
    public var hframes: Int;
    public var normalMap: Texture;
    public var offset: Vector2;
    public var regionEnabled: Bool;
    public var regionFilterClip: Bool;
    public var regionRect: Rect2;
    public var texture: Texture;
    public var vframes: Int;
    public function getRect(): Rect2;
    public function isPixelOpaque(pos: GdVector2): Bool;
    @:native("__new")
    public function new();
}
