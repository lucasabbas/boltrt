package lucidkit.godot;

@:native("godot.HTTPClient")
extern class HTTPClient extends Reference {
    public var blocking_mode_enabled: Bool;
    public var connection: StreamPeer;
    public var read_chunk_size: Int;
    public function close(): Void;
    public function connect_to_host(host: String, port: Int, use_ssl: Bool, verify_host: Bool): Int;
    public function get_response_body_length(): Int;
    public function get_response_code(): Int;
    public function get_response_headers(): PoolStringArray;
    public function get_response_headers_as_dictionary(): Map<Dynamic, Dynamic>;
    public function get_status(): Int;
    public function has_response(): Bool;
    public function is_response_chunked(): Bool;
    public function poll(): Int;
    public function query_string_from_dict(fields: Map<Dynamic, Dynamic>): String;
    public function read_response_body_chunk(): PoolByteArray;
    public function request(method: Int, url: String, headers: PoolStringArray, body: String): Int;
    public function request_raw(method: Int, url: String, headers: PoolStringArray, body: PoolByteArray): Int;
    public function set_http_proxy(host: String, port: Int): Void;
    public function set_https_proxy(host: String, port: Int): Void;
}
