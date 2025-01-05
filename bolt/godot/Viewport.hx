package bolt.godot;

class ViewportMsaa {
    public static var Disabled: Int = 0;
    public static var Msaa2x: Int = 1;
    public static var Msaa4x: Int = 2;
    public static var Msaa8x: Int = 3;
    public static var Msaa16x: Int = 4;
}
class ViewportUsage {
    public static var Usage2d: Int = 0;
    public static var Usage2dNoSampling: Int = 1;
    public static var Usage3d: Int = 2;
    public static var Usage3dNoEffects: Int = 3;
}
class ViewportDebugDraw {
    public static var Disabled: Int = 0;
    public static var Unshaded: Int = 1;
    public static var Overdraw: Int = 2;
    public static var Wireframe: Int = 3;
}
class ViewportRenderTargetClearMode {
    public static var Always: Int = 0;
    public static var Never: Int = 1;
    public static var OnlyNextFrame: Int = 2;
}
class ViewportRenderTargetUpdateMode {
    public static var Disabled: Int = 0;
    public static var Once: Int = 1;
    public static var WhenVisible: Int = 2;
    public static var Always: Int = 3;
}
class ViewportShadowAtlasQuad0 {
    public static var Disabled: Int = 0;
    public static var Subdiv1: Int = 1;
    public static var Subdiv4: Int = 2;
    public static var Subdiv16: Int = 3;
    public static var Subdiv64: Int = 4;
    public static var Subdiv256: Int = 5;
    public static var Subdiv1024: Int = 6;
    public static var Max: Int = 7;
}
class ViewportShadowAtlasQuad1 {
    public static var Disabled: Int = 0;
    public static var Subdiv1: Int = 1;
    public static var Subdiv4: Int = 2;
    public static var Subdiv16: Int = 3;
    public static var Subdiv64: Int = 4;
    public static var Subdiv256: Int = 5;
    public static var Subdiv1024: Int = 6;
    public static var Max: Int = 7;
}
class ViewportShadowAtlasQuad2 {
    public static var Disabled: Int = 0;
    public static var Subdiv1: Int = 1;
    public static var Subdiv4: Int = 2;
    public static var Subdiv16: Int = 3;
    public static var Subdiv64: Int = 4;
    public static var Subdiv256: Int = 5;
    public static var Subdiv1024: Int = 6;
    public static var Max: Int = 7;
}
class ViewportShadowAtlasQuad3 {
    public static var Disabled: Int = 0;
    public static var Subdiv1: Int = 1;
    public static var Subdiv4: Int = 2;
    public static var Subdiv16: Int = 3;
    public static var Subdiv64: Int = 4;
    public static var Subdiv256: Int = 5;
    public static var Subdiv1024: Int = 6;
    public static var Max: Int = 7;
}
class ViewportPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ViewportPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ViewportSignalNames {
    public static var guiFocusChanged: String = "gui_focus_changed";
    public static var sizeChanged: String = "size_changed";
}
@:native("godot.Viewport")
extern class Viewport extends Node {
    public var arvr: Bool;
    public var audioListenerEnable2d: Bool;
    public var audioListenerEnable3d: Bool;
    public var canvasTransform: Transform2D;
    public var debanding: Bool;
    public var debugDraw: Int;
    public var disable3d: Bool;
    public var fxaa: Bool;
    public var globalCanvasTransform: Transform2D;
    public var guiDisableInput: Bool;
    public var guiSnapControlsToPixels: Bool;
    public var handleInputLocally: Bool;
    public var hdr: Bool;
    public var keep3dLinear: Bool;
    public var msaa: Int;
    public var ownWorld: Bool;
    public var physicsObjectPicking: Bool;
    public var renderDirectToScreen: Bool;
    public var renderTargetClearMode: Int;
    public var renderTargetUpdateMode: Int;
    public var renderTargetVFlip: Bool;
    public var shadowAtlasQuad0: Int;
    public var shadowAtlasQuad1: Int;
    public var shadowAtlasQuad2: Int;
    public var shadowAtlasQuad3: Int;
    public var shadowAtlasSize: Int;
    public var sharpenIntensity: Float;
    public var size: Vector2;
    public var sizeOverrideStretch: Bool;
    public var transparentBg: Bool;
    public var usage: Int;
    public var use32BpcDepth: Bool;
    public var world: World;
    public var world2d: World2D;
    public function findWorld(): World;
    public function findWorld2d(): World2D;
    public function getCamera(): Camera;
    public function getFinalTransform(): Transform2D;
    public function getModalStackTop(): Control;
    public function getMousePosition(): Vector2;
    public function getRenderInfo(info: Int): Int;
    public function getShadowAtlasQuadrantSubdiv(quadrant: Int): Int;
    public function getSizeOverride(): Vector2;
    public function getTexture(): ViewportTexture;
    public function getViewportRid(): RID;
    public function getVisibleRect(): Rect2;
    public function guiGetDragData(): Dynamic;
    public function guiHasModalStack(): Bool;
    public function guiIsDragSuccessful(): Bool;
    public function guiIsDragging(): Bool;
    public function input(localEvent: InputEvent): Void;
    public function isInputHandled(): Bool;
    public function isSizeOverrideEnabled(): Bool;
    public function setAttachToScreenRect(rect: Rect2): Void;
    public function setInputAsHandled(): Void;
    public function setShadowAtlasQuadrantSubdiv(quadrant: Int, subdiv: Int): Void;
    public function setSizeOverride(enable: Bool, size: GdVector2, margin: GdVector2): Void;
    public function unhandledInput(localEvent: InputEvent): Void;
    public function updateWorlds(): Void;
    public function warpMouse(toPosition: GdVector2): Void;
    @:native("__new")
    public function new();
}
