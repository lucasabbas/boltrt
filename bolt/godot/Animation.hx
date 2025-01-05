package bolt.godot;

class AnimationSignalNames {
    public static var tracksChanged: String = "tracks_changed";
}
@:native("godot.Animation")
extern class Animation extends Resource {
    public var length: Float;
    public var loop: Bool;
    public var step: Float;
    public function addTrack(type: Int, atPosition: Int = -1): Int;
    public function animationTrackGetKeyAnimation(trackIdx: Int, keyIdx: Int): String;
    public function animationTrackInsertKey(trackIdx: Int, time: Float, animation: String): Int;
    public function animationTrackSetKeyAnimation(trackIdx: Int, keyIdx: Int, animation: String): Void;
    public function audioTrackGetKeyEndOffset(trackIdx: Int, keyIdx: Int): Float;
    public function audioTrackGetKeyStartOffset(trackIdx: Int, keyIdx: Int): Float;
    public function audioTrackGetKeyStream(trackIdx: Int, keyIdx: Int): Resource;
    public function audioTrackInsertKey(trackIdx: Int, time: Float, stream: Resource, startOffset: Float = 0, endOffset: Float = 0): Int;
    public function audioTrackSetKeyEndOffset(trackIdx: Int, keyIdx: Int, offset: Float): Void;
    public function audioTrackSetKeyStartOffset(trackIdx: Int, keyIdx: Int, offset: Float): Void;
    public function audioTrackSetKeyStream(trackIdx: Int, keyIdx: Int, stream: Resource): Void;
    public function bezierTrackGetKeyInHandle(trackIdx: Int, keyIdx: Int): Vector2;
    public function bezierTrackGetKeyOutHandle(trackIdx: Int, keyIdx: Int): Vector2;
    public function bezierTrackGetKeyValue(trackIdx: Int, keyIdx: Int): Float;
    public function bezierTrackInsertKey(trackIdx: Int, time: Float, value: Float, inHandle: GdVector2, outHandle: GdVector2): Int;
    public function bezierTrackInterpolate(trackIdx: Int, time: Float): Float;
    public function bezierTrackSetKeyInHandle(trackIdx: Int, keyIdx: Int, inHandle: GdVector2): Void;
    public function bezierTrackSetKeyOutHandle(trackIdx: Int, keyIdx: Int, outHandle: GdVector2): Void;
    public function bezierTrackSetKeyValue(trackIdx: Int, keyIdx: Int, value: Float): Void;
    public function clear(): Void;
    public function copyTrack(trackIdx: Int, toAnimation: Animation): Void;
    public function findTrack(path: NodePath): Int;
    public function getTrackCount(): Int;
    public function methodTrackGetKeyIndices(trackIdx: Int, timeSec: Float, delta: Float): PoolIntArray;
    public function methodTrackGetName(trackIdx: Int, keyIdx: Int): String;
    public function methodTrackGetParams(trackIdx: Int, keyIdx: Int): Array<Dynamic>;
    public function removeTrack(trackIdx: Int): Void;
    public function trackFindKey(trackIdx: Int, time: Float, exact: Bool = false): Int;
    public function trackGetInterpolationLoopWrap(trackIdx: Int): Bool;
    public function trackGetInterpolationType(trackIdx: Int): Int;
    public function trackGetKeyCount(trackIdx: Int): Int;
    public function trackGetKeyTime(trackIdx: Int, keyIdx: Int): Float;
    public function trackGetKeyTransition(trackIdx: Int, keyIdx: Int): Float;
    public function trackGetKeyValue(trackIdx: Int, keyIdx: Int): Dynamic;
    public function trackGetPath(trackIdx: Int): NodePath;
    public function trackGetType(trackIdx: Int): Int;
    public function trackInsertKey(trackIdx: Int, time: Float, key: Dynamic, transition: Float = 1): Void;
    public function trackIsEnabled(trackIdx: Int): Bool;
    public function trackIsImported(trackIdx: Int): Bool;
    public function trackMoveDown(trackIdx: Int): Void;
    public function trackMoveTo(trackIdx: Int, toIdx: Int): Void;
    public function trackMoveUp(trackIdx: Int): Void;
    public function trackRemoveKey(trackIdx: Int, keyIdx: Int): Void;
    public function trackRemoveKeyAtPosition(trackIdx: Int, position: Float): Void;
    public function trackSetEnabled(trackIdx: Int, enabled: Bool): Void;
    public function trackSetImported(trackIdx: Int, imported: Bool): Void;
    public function trackSetInterpolationLoopWrap(trackIdx: Int, interpolation: Bool): Void;
    public function trackSetInterpolationType(trackIdx: Int, interpolation: Int): Void;
    public function trackSetKeyTime(trackIdx: Int, keyIdx: Int, time: Float): Void;
    public function trackSetKeyTransition(trackIdx: Int, keyIdx: Int, transition: Float): Void;
    public function trackSetKeyValue(trackIdx: Int, key: Int, value: Dynamic): Void;
    public function trackSetPath(trackIdx: Int, path: NodePath): Void;
    public function trackSwap(trackIdx: Int, withIdx: Int): Void;
    public function transformTrackInsertKey(trackIdx: Int, time: Float, location: GdVector3, rotation: Quat, scale: GdVector3): Int;
    public function transformTrackInterpolate(trackIdx: Int, timeSec: Float): Array<Dynamic>;
    public function valueTrackGetKeyIndices(trackIdx: Int, timeSec: Float, delta: Float): PoolIntArray;
    public function valueTrackGetUpdateMode(trackIdx: Int): Int;
    public function valueTrackInterpolate(trackIdx: Int, timeSec: Float): Dynamic;
    public function valueTrackSetUpdateMode(trackIdx: Int, mode: Int): Void;
    @:native("__new")
    public function new();
}
