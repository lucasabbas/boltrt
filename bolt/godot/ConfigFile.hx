package bolt.godot;

class ConfigFileSignalNames {
}
@:native("godot.ConfigFile")
extern class ConfigFile extends Reference {
    public function clear(): Void;
    public function eraseSection(section: String): Void;
    public function eraseSectionKey(section: String, key: String): Void;
    public function getSectionKeys(section: String): PoolStringArray;
    public function getSections(): PoolStringArray;
    public function getValue(section: String, key: String, Default: Dynamic): Dynamic;
    public function hasSection(section: String): Bool;
    public function hasSectionKey(section: String, key: String): Bool;
    public function load(path: String): Int;
    public function loadEncrypted(path: String, key: Dynamic): Int;
    public function loadEncryptedPass(path: String, password: String): Int;
    public function parse(data: String): Int;
    public function save(path: String): Int;
    public function saveEncrypted(path: String, key: Dynamic): Int;
    public function saveEncryptedPass(path: String, password: String): Int;
    public function setValue(section: String, key: String, value: Dynamic): Void;
    @:native("__new")
    public function new();
}
