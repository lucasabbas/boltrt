package bolt.godot;

class FileSignalNames {
}
@:native("godot.File")
extern class File extends Reference {
    public var endianSwap: Bool;
    public function close(): Void;
    public function eofReached(): Bool;
    public function fileExists(path: String): Bool;
    public function flush(): Void;
    public function get16(): Int;
    public function get32(): Int;
    public function get64(): Int;
    public function get8(): Int;
    public function getAsText(skipCr: Bool = true): String;
    public function getBuffer(len: Int): Dynamic;
    public function getCsvLine(delim: String): lua.Table[Int, String];
    public function getDouble(): Float;
    public function getError(): Int;
    public function getFloat(): Float;
    public function getLen(): Int;
    public function getLine(): String;
    public function getMd5(path: String): String;
    public function getModifiedTime(file: String): Int;
    public function getPascalString(): String;
    public function getPath(): String;
    public function getPathAbsolute(): String;
    public function getPosition(): Int;
    public function getReal(): Float;
    public function getSha256(path: String): String;
    public function getVar(allowObjects: Bool = false): Dynamic;
    public function isOpen(): Bool;
    public function open(path: String, flags: Int): Int;
    public function openCompressed(path: String, modeFlags: Int, compressionMode: Int = 0): Int;
    public function openEncrypted(path: String, modeFlags: Int, key: Dynamic): Int;
    public function openEncryptedWithPass(path: String, modeFlags: Int, pass: String): Int;
    public function seek(position: Int): Void;
    public function seekEnd(position: Int = 0): Void;
    public function store16(value: Int): Void;
    public function store32(value: Int): Void;
    public function store64(value: Int): Void;
    public function store8(value: Int): Void;
    public function storeBuffer(buffer: Dynamic): Void;
    public function storeCsvLine(values: lua.Table[Int, String], delim: String): Void;
    public function storeDouble(value: Float): Void;
    public function storeFloat(value: Float): Void;
    public function storeLine(line: String): Void;
    public function storePascalString(string: String): Void;
    public function storeReal(value: Float): Void;
    public function storeString(string: String): Void;
    public function storeVar(value: Dynamic, fullObjects: Bool = false): Void;
    @:native("__new")
    public function new();
}
