package lucidkit.godot;

@:native("godot.HTTPRequest")
extern class HTTPRequest extends Node {
    public var body_size_limit: Int;
    public var download_chunk_size: Int;
    public var download_file: String;
    public var max_redirects: Int;
    public var timeout: Float;
    public var use_threads: Bool;
    public function cancel_request(): Void;
    public function get_body_size(): Int;
    public function get_downloaded_bytes(): Int;
    public function get_http_client_status(): Int;
    public function request(url: String, custom_headers: PoolStringArray, ssl_validate_domain: Bool, method: Int, request_data: String): Int;
    public function request_raw(url: String, custom_headers: PoolStringArray, ssl_validate_domain: Bool, method: Int, request_data_raw: PoolByteArray): Int;
    public function set_http_proxy(host: String, port: Int): Void;
    public function set_https_proxy(host: String, port: Int): Void;
}
