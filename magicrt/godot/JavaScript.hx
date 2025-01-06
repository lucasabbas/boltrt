package magicrt.godot;

class JavaScriptSignalNames {
    public static var pwaUpdateAvailable: String = "pwa_update_available";
}
@:native("godot.JavaScript")
extern class JavaScript extends Object {
    public function createCallback(object: Object, method: String): JavaScriptObject;
    public function createObject(object: String): Dynamic;
    public function downloadBuffer(buffer: Dynamic, name: String, mime: String): Void;
    public function eval(code: String, useGlobalExecutionContext: Bool = false): Dynamic;
    public function forceFsSync(): Void;
    public function getInterface(interface: String): JavaScriptObject;
    public function pwaNeedsUpdate(): Bool;
    public function pwaUpdate(): Int;
    @:native("__new")
    public function new();
}
