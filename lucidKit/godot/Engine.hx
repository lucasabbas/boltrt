package lucidKit.godot;

class EngineSignalNames {
}
@:native("godot.Engine")
extern class Engine extends Object {
    public var editorHint: Bool;
    public var iterationsPerSecond: Int;
    public var physicsJitterFix: Float;
    public var printErrorMessages: Bool;
    public var targetFps: Int;
    public var timeScale: Float;
    public function getAuthorInfo(): Map<Dynamic, Dynamic>;
    public function getCopyrightInfo(): Array<Dynamic>;
    public function getDonorInfo(): Map<Dynamic, Dynamic>;
    public function getFramesDrawn(): Int;
    public function getFramesPerSecond(): Float;
    public function getIdleFrames(): Int;
    public function getLicenseInfo(): Map<Dynamic, Dynamic>;
    public function getLicenseText(): String;
    public function getMainLoop(): MainLoop;
    public function getPhysicsFrames(): Int;
    public function getPhysicsInterpolationFraction(): Float;
    public function getSingleton(name: String): Object;
    public function getVersionInfo(): Map<Dynamic, Dynamic>;
    public function hasSingleton(name: String): Bool;
    public function isInPhysicsFrame(): Bool;
    @:native("__new")
    public function new();
}
