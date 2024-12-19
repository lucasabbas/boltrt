package koneko.godot;

import koneko.core.*;

@:native("godot.Object")
extern class GodotObject extends NativeObject {
    @:native("__new")
    public function new();

    @:native("notificationPostinitialize")
    public var notificationPostinitialize : Int;

    @:native("notificationPredelete")
    public var notificationPredelete : Int;

    @:native("isInstanceValid")
    public var isInstanceValid : Bool;

    @:native("dispose")
    public function dispose() : Void;

    @:native("free")
    public function free() : Void;

    @:native("getClass")
    public function getClass() : String;

    @:native("isClass")
    public function isClass(class : String) : Bool;

    @:native("set")
    public function set(property : String, value : Dynamic) : Void;

    @:native("get")
    public function get(property : String) : Dynamic;

    @:native("setIndexed")
    public function setIndexed(property : String, index : Int, value : Dynamic) : Void;

    @:native("getIndexed")
    public function getIndexed(property : String, index : Int) : Dynamic;

    @:native("getPropertyList")
    public function getPropertyList() : Array<String>;

    @:native("getMethodList")
    public function getMethodList() : Array<String>;

    @:native("notification")
    public function notification(what : Int) : Void;

    @:native("getInstanceId")
    public function getInstanceId() : Int;

    @:native("setScript")
    public function setScript(script : Dynamic) : Void;

    @:native("getScript")
    public function getScript() : Dynamic;

    @:native("setMeta")
    public function setMeta(name : String, value : Dynamic) : Void;

    @native("removeMeta")
    public function removeMeta(name : String) : Void;

    @:native("getMetaList")
    public function getMetaList() : Array<String>;

    @:native("addUserSignal")
    public function addUserSignal(name : String) : Void;

    @:native("hasUserSignal")
    public function hasUserSignal(name : String) : Bool;

    @:native("emitSignal")
    public function emitSignal(signal : String, varargs : Dynamic) : Void;

    @:native("call")
    public function call(method : String, varargs : Dynamic) : Dynamic;

    @:native("callDeferred")
    public function callDeferred(method : String, varargs : Dynamic) : Void;

    @:native("setDeferred")
    public function setDeferred(property : String, value : Dynamic) : Void;

    @:native("callv")
    public function callv(method : String, varargs : Array<Dynamic>) : Dynamic;

    @:native("hasMethod")
    public function hasMethod(method : String) : Bool;

    @:native("hasSignal")
    public function hasSignal(signal : String) : Bool;

    @:native("getSignalList")
    public function getSignalList() : Array<String>;

    @:native("getSignalConnectionList")
    public function getSignalConnectionList(signal : String) : Array<Dynamic>;

    @:native("getIncomingConnections")
    public function getIncomingConnections() : Array<Dynamic>;

    @:native("connect")
    public function connect(signal : String, target : GodotObject, method : String, binds : Array<Dynamic>, flags : Int) : Dynamic;

    @:native("disconnect")
    public function disconnect(signal : String, target : GodotObject, method : String) : Void;

    @:native("isConnected")
    public function isConnected(signal : String, target : GodotObject, method : String) : Bool;

    @:native("setBlockSignals")
    public function setBlockSignals(enable : Bool) : Void;

    @:native("isBlockingSignals")
    public function isBlockingSignals() : Bool;

    @:native("propertyListChangedNotify")
    public function propertyListChangedNotify() : Void;

    @:native("")
}