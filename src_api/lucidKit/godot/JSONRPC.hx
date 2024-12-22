package lucidkit.godot;

@:native("godot.JSONRPC")
extern class JSONRPC extends Object {
    public function make_notification(method: String, params: Variant): Map<Dynamic, Dynamic>;
    public function make_request(method: String, params: Variant, id: Variant): Map<Dynamic, Dynamic>;
    public function make_response(result: Variant, id: Variant): Map<Dynamic, Dynamic>;
    public function make_response_error(code: Int, message: String, id: Variant): Map<Dynamic, Dynamic>;
    public function process_action(action: Variant, recurse: Bool): Variant;
    public function process_string(action: String): String;
    public function set_scope(scope: String, target: Object): Void;
}
