package lucidKit.io;

import lucidKit.io.IoCore;

extern class FileSystemIo extends IoCore {
    public var path : String;

    public var altPath : String;

    public var altPath2 : String;

    @:native("__new")
    public function new(path : String, pathUrl : String);
}
