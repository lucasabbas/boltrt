package lucidKit.godot;

class HTTPClientSignalNames {
}
@:native("godot.HTTPClient")
extern class HTTPClient extends Reference {
    public var blockingModeEnabled: Bool;
    public var connection: StreamPeer;
    public var readChunkSize: Int;
    public function close(): Void;
    public function connectToHost(host: String, port: Int = -1, useSsl: Bool = false, verifyHost: Bool = true): Int;
    public function getResponseBodyLength(): Int;
    public function getResponseCode(): Int;
    public function getResponseHeaders(): PoolStringArray;
    public function getResponseHeadersAsDictionary(): Map<Dynamic, Dynamic>;
    public function getStatus(): Int;
    public function hasResponse(): Bool;
    public function isResponseChunked(): Bool;
    public function poll(): Int;
    public function queryStringFromDict(fields: Map<Dynamic, Dynamic>): String;
    public function readResponseBodyChunk(): PoolByteArray;
    public function request(method: Int, url: String, headers: PoolStringArray, body: String): Int;
    public function requestRaw(method: Int, url: String, headers: PoolStringArray, body: PoolByteArray): Int;
    public function setHttpProxy(host: String, port: Int): Void;
    public function setHttpsProxy(host: String, port: Int): Void;
    @:native("__new")
    public function new();
}
