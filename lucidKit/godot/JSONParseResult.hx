package lucidKit.godot;

class JSONParseResultError {
    public static var Ok: Int = 0;
    public static var Failed: Int = 1;
    public static var Unavailable: Int = 2;
    public static var Unconfigured: Int = 3;
    public static var Unauthorized: Int = 4;
    public static var ParameterRangeError: Int = 5;
    public static var OutOfMemory: Int = 6;
    public static var FileNotFound: Int = 7;
    public static var FileBadDrive: Int = 8;
    public static var FileBadPath: Int = 9;
    public static var FileNoPermission: Int = 10;
    public static var FileAlreadyInUse: Int = 11;
    public static var FileCantOpen: Int = 12;
    public static var FileCantWrite: Int = 13;
    public static var FileCantRead: Int = 14;
    public static var FileUnrecognized: Int = 15;
    public static var FileCorrupt: Int = 16;
    public static var FileMissingDependencies: Int = 17;
    public static var FileEof: Int = 18;
    public static var CantOpen: Int = 19;
    public static var CantCreate: Int = 20;
    public static var QueryFailed: Int = 21;
    public static var AlreadyInUse: Int = 22;
    public static var Locked: Int = 23;
    public static var Timeout: Int = 24;
    public static var CantConnect: Int = 25;
    public static var CantResolve: Int = 26;
    public static var ConnectionError: Int = 27;
    public static var CantAcquireResource: Int = 28;
    public static var CantFork: Int = 29;
    public static var InvalidData: Int = 30;
    public static var InvalidParameter: Int = 31;
    public static var AlreadyExists: Int = 32;
    public static var DoesNotExist: Int = 33;
    public static var DatabaseCantRead: Int = 34;
    public static var DatabaseCantWrite: Int = 35;
    public static var CompilationFailed: Int = 36;
    public static var MethodNotFound: Int = 37;
    public static var LinkFailed: Int = 38;
    public static var ScriptFailed: Int = 39;
    public static var CyclicLink: Int = 40;
    public static var InvalidDeclaration: Int = 41;
    public static var DuplicateSymbol: Int = 42;
    public static var ParseError: Int = 43;
    public static var Busy: Int = 44;
    public static var Skip: Int = 45;
    public static var Help: Int = 46;
    public static var Bug: Int = 47;
    public static var PrinterOnFire: Int = 48;
}
class JSONParseResultSignalNames {
}
@:native("godot.JSONParseResult")
extern class JSONParseResult extends Reference {
    public var error: Int;
    public var errorLine: Int;
    public var errorString: String;
    public var result: Variant;
    @:native("__new")
    public function new();
}
