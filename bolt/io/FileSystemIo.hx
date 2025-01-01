package bolt.io;

import bolt.io.IoCore;

@:native("FileSystemIo")
extern class FileSystemIo extends BaseSystemIo {
    public var path : String;

    public var altPath : String;

    public var altPath2 : String;

    @:native("__new")
    public function new(path : String, pathUrl : String);
}
