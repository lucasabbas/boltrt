package magicrt.godot;

class AnimationTreePlayerPlaybackProcessMode {
    public static var Physics: Int = 0;
    public static var Idle: Int = 1;
}
class AnimationTreePlayerPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class AnimationTreePlayerPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class AnimationTreePlayerSignalNames {
}
@:native("godot.AnimationTreePlayer")
extern class AnimationTreePlayer extends Node {
    public var active: Bool;
    public var basePath: NodePath;
    public var masterPlayer: NodePath;
    public var playbackProcessMode: Int;
    public function addNode(type: Int, id: String): Void;
    public function advance(delta: Float): Void;
    public function animationNodeGetAnimation(id: String): Animation;
    public function animationNodeGetMasterAnimation(id: String): String;
    public function animationNodeGetPosition(id: String): Float;
    public function animationNodeSetAnimation(id: String, animation: Animation): Void;
    public function animationNodeSetFilterPath(id: String, path: NodePath, enable: Bool): Void;
    public function animationNodeSetMasterAnimation(id: String, source: String): Void;
    public function areNodesConnected(id: String, dstId: String, dstInputIdx: Int): Bool;
    public function blend2NodeGetAmount(id: String): Float;
    public function blend2NodeSetAmount(id: String, blend: Float): Void;
    public function blend2NodeSetFilterPath(id: String, path: NodePath, enable: Bool): Void;
    public function blend3NodeGetAmount(id: String): Float;
    public function blend3NodeSetAmount(id: String, blend: Float): Void;
    public function blend4NodeGetAmount(id: String): Vector2;
    public function blend4NodeSetAmount(id: String, blend: GdVector2): Void;
    public function connectNodes(id: String, dstId: String, dstInputIdx: Int): Int;
    public function disconnectNodes(id: String, dstInputIdx: Int): Void;
    public function getNodeList(): PoolStringArray;
    public function mixNodeGetAmount(id: String): Float;
    public function mixNodeSetAmount(id: String, ratio: Float): Void;
    public function nodeExists(node: String): Bool;
    public function nodeGetInputCount(id: String): Int;
    public function nodeGetInputSource(id: String, idx: Int): String;
    public function nodeGetPosition(id: String): Vector2;
    public function nodeGetType(id: String): Int;
    public function nodeRename(node: String, newName: String): Int;
    public function nodeSetPosition(id: String, screenPosition: GdVector2): Void;
    public function oneshotNodeGetAutorestartDelay(id: String): Float;
    public function oneshotNodeGetAutorestartRandomDelay(id: String): Float;
    public function oneshotNodeGetFadeinTime(id: String): Float;
    public function oneshotNodeGetFadeoutTime(id: String): Float;
    public function oneshotNodeHasAutorestart(id: String): Bool;
    public function oneshotNodeIsActive(id: String): Bool;
    public function oneshotNodeSetAutorestart(id: String, enable: Bool): Void;
    public function oneshotNodeSetAutorestartDelay(id: String, delaySec: Float): Void;
    public function oneshotNodeSetAutorestartRandomDelay(id: String, randSec: Float): Void;
    public function oneshotNodeSetFadeinTime(id: String, timeSec: Float): Void;
    public function oneshotNodeSetFadeoutTime(id: String, timeSec: Float): Void;
    public function oneshotNodeSetFilterPath(id: String, path: NodePath, enable: Bool): Void;
    public function oneshotNodeStart(id: String): Void;
    public function oneshotNodeStop(id: String): Void;
    public function recomputeCaches(): Void;
    public function removeNode(id: String): Void;
    public function reset(): Void;
    public function timescaleNodeGetScale(id: String): Float;
    public function timescaleNodeSetScale(id: String, scale: Float): Void;
    public function timeseekNodeSeek(id: String, seconds: Float): Void;
    public function transitionNodeDeleteInput(id: String, inputIdx: Int): Void;
    public function transitionNodeGetCurrent(id: String): Int;
    public function transitionNodeGetInputCount(id: String): Int;
    public function transitionNodeGetXfadeTime(id: String): Float;
    public function transitionNodeHasInputAutoAdvance(id: String, inputIdx: Int): Bool;
    public function transitionNodeSetCurrent(id: String, inputIdx: Int): Void;
    public function transitionNodeSetInputAutoAdvance(id: String, inputIdx: Int, enable: Bool): Void;
    public function transitionNodeSetInputCount(id: String, count: Int): Void;
    public function transitionNodeSetXfadeTime(id: String, timeSec: Float): Void;
    @:native("__new")
    public function new();
}
