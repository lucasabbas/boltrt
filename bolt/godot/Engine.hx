package bolt.godot;

import lua.Table;

class EngineSignalNames {
}
@:native("godot.Engine")
extern class Engine extends Object {
    public static var editorHint: Bool;
    public static var iterationsPerSecond: Int;
    public static var physicsJitterFix: Float;
    public static var printErrorMessages: Bool;
    public static var targetFps: Int;
    public static var timeScale: Float;
    public static function getAuthorInfo(): Map<Dynamic, Dynamic>;
    public static function getCopyrightInfo(): Array<Dynamic>;
    public static function getDonorInfo(): Map<Dynamic, Dynamic>;
    public static function getFramesDrawn(): Int;
    public static function getFramesPerSecond(): Float;
    public static function getIdleFrames(): Int;
    public static function getLicenseInfo(): Map<Dynamic, Dynamic>;
    public static function getLicenseText(): String;
    public static function getMainLoop(): MainLoop;
    public static function getPhysicsFrames(): Int;
    public static function getPhysicsInterpolationFraction(): Float;
    public static function getSingleton(name: String): Object;
    public static function getVersionInfo(): Table<Dynamic, Dynamic>;
    public static function hasSingleton(name: String): Bool;
    public static function isInPhysicsFrame(): Bool;
    @:native("__new")
    public function new();
}
