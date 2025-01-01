package bolt.godot;

class TileMapMode {
    public static var Square: Int = 0;
    public static var Isometric: Int = 1;
    public static var Custom: Int = 2;
}
class TileMapCellHalfOffset {
    public static var X: Int = 0;
    public static var Y: Int = 1;
    public static var Disabled: Int = 2;
    public static var NegativeX: Int = 3;
    public static var NegativeY: Int = 4;
}
class TileMapCellTileOrigin {
    public static var TopLeft: Int = 0;
    public static var Center: Int = 1;
    public static var BottomLeft: Int = 2;
}
class TileMapPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class TileMapPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class TileMapSignalNames {
    public static var settingsChanged: String = "settings_changed";
}
@:native("godot.TileMap")
extern class TileMap extends Node2D {
    public var bakeNavigation: Bool;
    public var cellClipUv: Bool;
    public var cellCustomTransform: Transform2D;
    public var cellHalfOffset: Int;
    public var cellQuadrantSize: Int;
    public var cellSize: Vector2;
    public var cellTileOrigin: Int;
    public var cellYSort: Bool;
    public var centeredTextures: Bool;
    public var collisionBounce: Float;
    public var collisionFriction: Float;
    public var collisionLayer: Int;
    public var collisionMask: Int;
    public var collisionUseKinematic: Bool;
    public var collisionUseParent: Bool;
    public var compatibilityMode: Bool;
    public var mode: Int;
    public var navigationLayers: Int;
    public var occluderLightMask: Int;
    public var showCollision: Bool;
    public var tileSet: TileSet;
    public function clear(): Void;
    public function fixInvalidTiles(): Void;
    public function getCell(x: Int, y: Int): Int;
    public function getCellAutotileCoord(x: Int, y: Int): Vector2;
    public function getCellv(position: GdVector2): Int;
    public function getCollisionLayerBit(bit: Int): Bool;
    public function getCollisionMaskBit(bit: Int): Bool;
    public function getUsedCells(): Array<Dynamic>;
    public function getUsedCellsById(id: Int): Array<Dynamic>;
    public function getUsedRect(): Rect2;
    public function isCellTransposed(x: Int, y: Int): Bool;
    public function isCellXFlipped(x: Int, y: Int): Bool;
    public function isCellYFlipped(x: Int, y: Int): Bool;
    public function mapToWorld(mapPosition: GdVector2, ignoreHalfOfs: Bool = false): Vector2;
    public function setCell(x: Int, y: Int, tile: Int, flipX: Bool = false, flipY: Bool = false, transpose: Bool = false, autotileCoord: GdVector2): Void;
    public function setCellv(position: GdVector2, tile: Int, flipX: Bool = false, flipY: Bool = false, transpose: Bool = false, autotileCoord: GdVector2): Void;
    public function setCollisionLayerBit(bit: Int, value: Bool): Void;
    public function setCollisionMaskBit(bit: Int, value: Bool): Void;
    public function updateBitmaskArea(position: GdVector2): Void;
    public function updateBitmaskRegion(start: GdVector2, end: GdVector2): Void;
    public function updateDirtyQuadrants(): Void;
    public function worldToMap(worldPosition: GdVector2): Vector2;
    @:native("__new")
    public function new();
}
