package magicrt.io;

import magicrt.io.IoCore;

@:native("IoManager")
extern class IoManager extends IoCore {
    public var ioCores : Array<IoCore>;

    @:native("__new")
    public function new();

    public function register(ioCore : IoCore) : Void;

    public function registerPath(path : String, pathUrl : String) : Void;

    public function unregister(ioCore : IoCore) : Void;
}