package lucidKit.godot;

@:native("godot.EditorExportPlugin")
extern class EditorExportPlugin extends Reference {
    public function ExportBegin(features: PoolStringArray, isDebug: Bool, path: String, flags: Int): Void;
    public function ExportEnd(): Void;
    public function ExportFile(path: String, type: String, features: PoolStringArray): Void;
    public function addFile(path: String, file: PoolByteArray, remap: Bool): Void;
    public function addIosBundleFile(path: String): Void;
    public function addIosCppCode(code: String): Void;
    public function addIosEmbeddedFramework(path: String): Void;
    public function addIosFramework(path: String): Void;
    public function addIosLinkerFlags(flags: String): Void;
    public function addIosPlistContent(plistContent: String): Void;
    public function addIosProjectStaticLib(path: String): Void;
    public function addOsxPluginFile(path: String): Void;
    public function addSharedObject(path: String, tags: PoolStringArray): Void;
    public function skip(): Void;
    @:native("__new")
    public function new();
}