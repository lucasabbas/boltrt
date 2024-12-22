package lucidkit.godot;

@:native("godot.JavaScript")
extern class JavaScript extends Object {
    public function create_callback(object: Object, method: String): JavaScriptObject;
    public function create_object(object: String): Variant;
    public function download_buffer(buffer: PoolByteArray, name: String, mime: String): Void;
    public function eval(code: String, use_global_execution_context: Bool): Variant;
    public function force_fs_sync(): Void;
    public function get_interface(interface: String): JavaScriptObject;
    public function pwa_needs_update(): Bool;
    public function pwa_update(): Int;
}
