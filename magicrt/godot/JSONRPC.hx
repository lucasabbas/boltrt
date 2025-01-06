package magicrt.godot;

class JSONRPCSignalNames {
}
@:native("godot.JSONRPC")
extern class JSONRPC extends Object {
    public function makeNotification(method: String, params: Dynamic): Map<Dynamic, Dynamic>;
    public function makeRequest(method: String, params: Dynamic, id: Dynamic): Map<Dynamic, Dynamic>;
    public function makeResponse(result: Dynamic, id: Dynamic): Map<Dynamic, Dynamic>;
    public function makeResponseError(code: Int, message: String, id: Dynamic): Map<Dynamic, Dynamic>;
    public function processAction(action: Dynamic, recurse: Bool = false): Dynamic;
    public function processString(action: String): String;
    public function setScope(scope: String, target: Object): Void;
    @:native("__new")
    public function new();
}
