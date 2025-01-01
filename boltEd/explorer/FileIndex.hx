package boltEd.explorer;

class FileIndex {
    public var path : String = "";
    public var dirName : String = "";

    public var parent : DirIndex = null;

    public function new(path : String, parent : DirIndex = null) {
        this.path = path;
        this.dirName = path.split("/").pop();
        this.parent = parent;
    }
}