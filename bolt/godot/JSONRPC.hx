package bolt.godot;

class JSONRPCSignalNames {
}
@:native("godot.JSONRPC")
extern class JSONRPC extends Object {
    public function makeNotification(method: String, params: Variant): Map<Dynamic, Dynamic>;
    public function makeRequest(method: String, params: Variant, id: Variant): Map<Dynamic, Dynamic>;
    public function makeResponse(result: Variant, id: Variant): Map<Dynamic, Dynamic>;
    public function makeResponseError(code: Int, message: String, id: Variant): Map<Dynamic, Dynamic>;
    public function processAction(action: Variant, recurse: Bool = false): Variant;
    public function processString(action: String): String;
    public function setScope(scope: String, target: Object): Void;
    @:native("__new")
    public function new();
}
