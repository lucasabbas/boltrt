package bolt.godot;

class TileSetSignalNames {
}
@:native("godot.TileSet")
extern class TileSet extends Resource {
    public function ForwardAtlasSubtileSelection(atlastileId: Int, tilemap: Object, tileLocation: GdVector2): Vector2;
    public function ForwardSubtileSelection(autotileId: Int, bitmask: Int, tilemap: Object, tileLocation: GdVector2): Vector2;
    public function IsTileBound(drawnId: Int, neighborId: Int): Bool;
    public function autotileClearBitmaskMap(id: Int): Void;
    public function autotileGetBitmask(id: Int, coord: GdVector2): Int;
    public function autotileGetBitmaskMode(id: Int): Int;
    public function autotileGetFallbackMode(id: Int): Int;
    public function autotileGetIconCoordinate(id: Int): Vector2;
    public function autotileGetLightOccluder(id: Int, coord: GdVector2): OccluderPolygon2D;
    public function autotileGetNavigationPolygon(id: Int, coord: GdVector2): NavigationPolygon;
    public function autotileGetSize(id: Int): Vector2;
    public function autotileGetSpacing(id: Int): Int;
    public function autotileGetSubtilePriority(id: Int, coord: GdVector2): Int;
    public function autotileGetZIndex(id: Int, coord: GdVector2): Int;
    public function autotileSetBitmask(id: Int, bitmask: GdVector2, flag: Int): Void;
    public function autotileSetBitmaskMode(id: Int, mode: Int): Void;
    public function autotileSetFallbackMode(id: Int, mode: Int): Void;
    public function autotileSetIconCoordinate(id: Int, coord: GdVector2): Void;
    public function autotileSetLightOccluder(id: Int, lightOccluder: OccluderPolygon2D, coord: GdVector2): Void;
    public function autotileSetNavigationPolygon(id: Int, navigationPolygon: NavigationPolygon, coord: GdVector2): Void;
    public function autotileSetSize(id: Int, size: GdVector2): Void;
    public function autotileSetSpacing(id: Int, spacing: Int): Void;
    public function autotileSetSubtilePriority(id: Int, coord: GdVector2, priority: Int): Void;
    public function autotileSetZIndex(id: Int, coord: GdVector2, zIndex: Int): Void;
    public function clear(): Void;
    public function createTile(id: Int): Void;
    public function findTileByName(name: String): Int;
    public function getLastUnusedTileId(): Int;
    public function getTilesIds(): Array<Dynamic>;
    public function removeTile(id: Int): Void;
    public function tileAddShape(id: Int, shape: Shape2D, shapeTransform: Transform2D, oneWay: Bool = false, autotileCoord: GdVector2): Void;
    public function tileGetLightOccluder(id: Int): OccluderPolygon2D;
    public function tileGetMaterial(id: Int): ShaderMaterial;
    public function tileGetModulate(id: Int): Color;
    public function tileGetName(id: Int): String;
    public function tileGetNavigationPolygon(id: Int): NavigationPolygon;
    public function tileGetNavigationPolygonOffset(id: Int): Vector2;
    public function tileGetNormalMap(id: Int): Texture;
    public function tileGetOccluderOffset(id: Int): Vector2;
    public function tileGetRegion(id: Int): Rect2;
    public function tileGetShape(id: Int, shapeId: Int): Shape2D;
    public function tileGetShapeCount(id: Int): Int;
    public function tileGetShapeOffset(id: Int, shapeId: Int): Vector2;
    public function tileGetShapeOneWay(id: Int, shapeId: Int): Bool;
    public function tileGetShapeOneWayMargin(id: Int, shapeId: Int): Float;
    public function tileGetShapeTransform(id: Int, shapeId: Int): Transform2D;
    public function tileGetShapes(id: Int): Array<Dynamic>;
    public function tileGetTexture(id: Int): Texture;
    public function tileGetTextureOffset(id: Int): Vector2;
    public function tileGetTileMode(id: Int): Int;
    public function tileGetZIndex(id: Int): Int;
    public function tileSetLightOccluder(id: Int, lightOccluder: OccluderPolygon2D): Void;
    public function tileSetMaterial(id: Int, material: ShaderMaterial): Void;
    public function tileSetModulate(id: Int, color: Color): Void;
    public function tileSetName(id: Int, name: String): Void;
    public function tileSetNavigationPolygon(id: Int, navigationPolygon: NavigationPolygon): Void;
    public function tileSetNavigationPolygonOffset(id: Int, navigationPolygonOffset: GdVector2): Void;
    public function tileSetNormalMap(id: Int, normalMap: Texture): Void;
    public function tileSetOccluderOffset(id: Int, occluderOffset: GdVector2): Void;
    public function tileSetRegion(id: Int, region: Rect2): Void;
    public function tileSetShape(id: Int, shapeId: Int, shape: Shape2D): Void;
    public function tileSetShapeOffset(id: Int, shapeId: Int, shapeOffset: GdVector2): Void;
    public function tileSetShapeOneWay(id: Int, shapeId: Int, oneWay: Bool): Void;
    public function tileSetShapeOneWayMargin(id: Int, shapeId: Int, oneWay: Float): Void;
    public function tileSetShapeTransform(id: Int, shapeId: Int, shapeTransform: Transform2D): Void;
    public function tileSetShapes(id: Int, shapes: Array<Dynamic>): Void;
    public function tileSetTexture(id: Int, texture: Texture): Void;
    public function tileSetTextureOffset(id: Int, textureOffset: GdVector2): Void;
    public function tileSetTileMode(id: Int, tilemode: Int): Void;
    public function tileSetZIndex(id: Int, zIndex: Int): Void;
    @:native("__new")
    public function new();
}
