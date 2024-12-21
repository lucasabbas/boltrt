package lucidKit.godot;

import lucidKit.core.*;

@:native("godot.Object")
extern class GodotObject extends MonoObject {
    @:native("__new")
    public function new();

    public var notificationPostinitialize : Int;

    public var notificationPredelete : Int;

    public var isInstanceValid : Bool;

    public function dispose() : Void;

    public function free() : Void;

    public function getClass() : String;

    public function isClass(classname : String) : Bool;

    public function set(property : String, value : Dynamic) : Void;

    public function get(property : String) : Dynamic;

    public function setIndexed(property : String, index : Int, value : Dynamic) : Void;

    public function getIndexed(property : String, index : Int) : Dynamic;

    public function getPropertyList() : Array<String>;

    public function getMethodList() : Array<String>;

    public function notification(what : Int) : Void;

    public function getInstanceId() : Int;

    public function setScript(script : Dynamic) : Void;

    public function getScript() : Dynamic;

    public function setMeta(name : String, value : Dynamic) : Void;

    public function removeMeta(name : String) : Void;

    public function getMetaList() : Array<String>;

    public function addUserSignal(name : String) : Void;

    public function hasUserSignal(name : String) : Bool;

    public function emitSignal(signal : String, varargs : Dynamic) : Void;

    public function call(method : String, varargs : Dynamic) : Dynamic;

    public function callDeferred(method : String, varargs : Dynamic) : Void;

    public function setDeferred(property : String, value : Dynamic) : Void;

    public function callv(method : String, varargs : Array<Dynamic>) : Dynamic;

    public function hasMethod(method : String) : Bool;

    public function hasSignal(signal : String) : Bool;

    public function getSignalList() : Array<String>;

    public function getSignalConnectionList(signal : String) : Array<Dynamic>;

    public function getIncomingConnections() : Array<Dynamic>;

    public function connect(signal : String, target : GodotObject, method : String, binds : Array<Dynamic>, flags : Int) : Dynamic;

    public function disconnect(signal : String, target : GodotObject, method : String) : Void;

    public function isConnected(signal : String, target : GodotObject, method : String) : Bool;

    public function setBlockSignals(enable : Bool) : Void;

    public function isBlockingSignals() : Bool;

    public function propertyListChangedNotify() : Void;

    public function setMessageTanslation(enable : Bool) : Void;

    public function toString() : String;

    public function tr(message: String) : String;
}