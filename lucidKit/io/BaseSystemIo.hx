package lucidKit.io;

@:native("BaseSystemIo")
extern class BaseSystemIo extends IoCore {
    public function getFileUrl(path : String) : String;
}