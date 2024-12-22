package lucidKit.godot;

@:native("godot.StreamPeer")
extern class StreamPeer extends Reference {
    public var bigEndian: Bool;
    public function get16(): Int;
    public function get32(): Int;
    public function get64(): Int;
    public function get8(): Int;
    public function getAvailableBytes(): Int;
    public function getData(bytes: Int): Array<Dynamic>;
    public function getDouble(): Float;
    public function getFloat(): Float;
    public function getPartialData(bytes: Int): Array<Dynamic>;
    public function getString(bytes: Int = -1): String;
    public function getU16(): Int;
    public function getU32(): Int;
    public function getU64(): Int;
    public function getU8(): Int;
    public function getUtf8String(bytes: Int = -1): String;
    public function getVar(allowObjects: Bool = false): Variant;
    public function put16(value: Int): Void;
    public function put32(value: Int): Void;
    public function put64(value: Int): Void;
    public function put8(value: Int): Void;
    public function putData(data: PoolByteArray): Int;
    public function putDouble(value: Float): Void;
    public function putFloat(value: Float): Void;
    public function putPartialData(data: PoolByteArray): Array<Dynamic>;
    public function putString(value: String): Void;
    public function putU16(value: Int): Void;
    public function putU32(value: Int): Void;
    public function putU64(value: Int): Void;
    public function putU8(value: Int): Void;
    public function putUtf8String(value: String): Void;
    public function putVar(value: Variant, fullObjects: Bool = false): Void;
    @:native("__new")
    public function new();
}
