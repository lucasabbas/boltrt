package magicrt.io;

import magicrt.core.MonoObject;
import haxe.io.Bytes;
import lua.Table;

@:native("IoCore")
extern class IoCore extends MonoObject {
    public var pathUrl : String;

    public function getFilePath(path : String) : String;

    public function loadText(path : String) : String;

    public function saveText(path : String, text : String) : Void;

    public function loadBuffer(path : String) : Dynamic;

    public function saveBuffer(path : String, buffer : Dynamic) : Void;

    public function getFileListAll(extension : String, recursive : Bool = true) : Table<Int, String>;

    public function getFileList(path : String, extension : String, recursive : Bool = true) : Table<Int, String>;

    public function directoryExists(path : String) : Bool;

    public function deleteDirectory(path : String) : Void;
    
    public function fileExists(path : String) : Bool;

    public function deleteFile(path : String) : Void;

    public function moveFile(from : String, to : String) : Void;

    public function createDirectory(path : String) : Int;

    public function getTempFilename(name : String) : String;
}