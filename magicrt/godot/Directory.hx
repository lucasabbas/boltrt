package magicrt.godot;

class DirectorySignalNames {
}
@:native("godot.Directory")
extern class Directory extends Reference {
    public function changeDir(todir: String): Int;
    public function copy(from: String, to: String): Int;
    public function currentIsDir(): Bool;
    public function dirExists(path: String): Bool;
    public function fileExists(path: String): Bool;
    public function getCurrentDir(): String;
    public function getCurrentDrive(): Int;
    public function getDrive(idx: Int): String;
    public function getDriveCount(): Int;
    public function getNext(): String;
    public function getSpaceLeft(): Int;
    public function listDirBegin(skipNavigational: Bool = false, skipHidden: Bool = false): Int;
    public function listDirEnd(): Void;
    public function makeDir(path: String): Int;
    public function makeDirRecursive(path: String): Int;
    public function open(path: String): Int;
    public function remove(path: String): Int;
    public function rename(from: String, to: String): Int;
    @:native("__new")
    public function new();
}
