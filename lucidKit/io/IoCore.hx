package lucidKit.io;

import lucidKit.core.MonoObject;
import haxe.io.Bytes;

extern class IoCore extends MonoObject {
    public var pathUrl : String;

    public function loadText(path : String) : String;

    public function saveText(path : String, text : String) : Void;

    public function loadBuffer(path : String) : Bytes;

    public function saveBuffer(path : String, buffer : Bytes) : Void;

    public function getFileListAll(extension : String, recursive : Bool = true) : Array<String>;

    public function getFileList(path : String, extension : String, recursive : Bool = true) : Array<String>;

    public function directoryExists(path : String) : Bool;

    public function deleteDirectory(path : String) : Void;
    
    public function fileExists(path : String) : Bool;

    public function deleteFile(path : String) : Void;

    public function moveFile(from : String, to : String) : Void;

    public function createDirectory(path : String) : Int;

    public function getTempFilename(name : String) : String;
}