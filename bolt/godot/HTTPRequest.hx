package bolt.godot;

class HTTPRequestPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class HTTPRequestPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class HTTPRequestSignalNames {
    public static var requestCompleted: String = "request_completed";
}
@:native("godot.HTTPRequest")
extern class HTTPRequest extends Node {
    public var bodySizeLimit: Int;
    public var downloadChunkSize: Int;
    public var downloadFile: String;
    public var maxRedirects: Int;
    public var timeout: Float;
    public var useThreads: Bool;
    public function cancelRequest(): Void;
    public function getBodySize(): Int;
    public function getDownloadedBytes(): Int;
    public function getHttpClientStatus(): Int;
    public function request(url: String, customHeaders: PoolStringArray, sslValidateDomain: Bool = true, method: Int = 0, requestData: String): Int;
    public function requestRaw(url: String, customHeaders: PoolStringArray, sslValidateDomain: Bool = true, method: Int = 0, requestDataRaw: PoolByteArray): Int;
    public function setHttpProxy(host: String, port: Int): Void;
    public function setHttpsProxy(host: String, port: Int): Void;
    @:native("__new")
    public function new();
}
